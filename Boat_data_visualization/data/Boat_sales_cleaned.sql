-- Data Cleaning Project -- Boat Sales

-- Step 1: Create staging tables and import raw data
-- ==================================================

-- Create initial staging table
CREATE TABLE boat_sales LIKE boat_data;

-- Copy data to staging table
INSERT INTO boat_sales 
SELECT * FROM boat_data;

-- Checking for duplicates

WITH duplicate_cte AS
(
SELECT *,
ROW_NUMBER() OVER(
PARTITION BY Price,`Boat Type`, Manufacturer,`Type`,location, Material) as row_num
FROM boat_sales)
SELECT *
FROM duplicate_cte
WHERE row_num >1;


CREATE TABLE `boat_sales2` (
  `Price` text,
  `Boat Type` text,
  `Manufacturer` text,
  `Type` text,
  `Year Built` int DEFAULT NULL,
  `Length` double DEFAULT NULL,
  `Width` double DEFAULT NULL,
  `Material` text,
  `Location` text,
  `Number of views last 7 days` int DEFAULT NULL,
  `row_num` INT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO boat_sales2
SELECT *,
ROW_NUMBER() OVER(
PARTITION BY Price,`Boat Type`, Manufacturer,`Type`,`Year Built`,location, Material) as row_num
FROM boat_sales;

SELECT *
FROM boat_sales2
WHERE row_num > 1;

DELETE
FROM boat_sales2
WHERE row_num > 1;

-- Standardizing Data
SELECT Location
FROM boat_sales2;

UPDATE boat_sales2 
SET  `Type` = 'Used boat'
WHERE `Type` LIKE 'Used boat';

UPDATE boat_sales2 
SET  `Type` = 'new boat'
WHERE `Type` LIKE 'new boat%';

SELECT TRIM(SUBSTRING_INDEX(Location,'Ã',1)) AS country
FROM boat_sales2;

UPDATE boat_sales2
SET Location = TRIM(SUBSTRING_INDEX(Location,'Ã',1));

UPDATE boat_sales2
SET Price = REGEXP_SUBSTR(Price, '[0-9]+(\\.[0-9]+)?');

-- Remove unneccesary columns

SELECT * 
FROM boat_sales2;

ALTER TABLE boat_sales2
DROP COLUMN row_num;

ALTER TABLE boat_sales2
DROP COLUMN Length;

ALTER TABLE boat_sales2
DROP COLUMN Width;
