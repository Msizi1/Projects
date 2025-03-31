# Boat Data Cleaning and Visualization

## Project Overview
This project focuses on cleaning and visualizing a dataset related to boats. We start with a dataset from Kaggle called **Boat Data**, clean it using MySQL, export it as an SQL file, and further process it in Python. Finally, we create pivot tables and charts before developing a visualization dashboard in Excel.

## Workflow

### 1. Data Acquisition
- The dataset is sourced from **Kaggle (Boat Data)**.
- Imported into **MySQL** for initial cleaning and transformation.

### 2. Data Cleaning in MySQL
- Loaded the dataset into a **MySQL database**.
- Removed duplicate records and handled missing values.
- Standardized column names and data formats.
- Exported the cleaned data as an **SQL file**.

### 3. Data Transformation in Python
- Loaded the **SQL file** into Python.
- Converted the dataset into an **Excel (.xlsx) file**.
- Created **three pivot tables** to summarize key insights.
- Generated **charts** based on the pivot tables.

### 4. Data Visualization in Excel
- Designed a **separate sheet** for the visualization dashboard.
- Integrated the pivot tables and charts.
- Applied formatting for better readability and insights.

## Tools Used
- **MySQL** – Data cleaning and transformation
- **Python (pandas, openpyxl, matplotlib, seaborn)** – Data conversion, pivot tables, and chart creation
- **Excel** – Final visualization dashboard

## How to Use
1. Download the dataset from **Kaggle**.
2. Import the dataset into **MySQL** and run the provided SQL queries for cleaning.
3. Export the cleaned data as an SQL file.
4. Use **Python** to process the SQL file and generate the Excel report.
5. Open the Excel file and explore the visualization dashboard.

## Folder Structure
```
├── data/                  # Raw and processed data
│   ├── boat_data_raw.csv  # Original dataset
│   ├── cleaned_boat_data.sql  # Cleaned data in SQL format
│   ├── final_boat_data.xlsx  # Processed Excel file
├── scripts/               # Python scripts
│   ├── process_data.py    # Converts SQL data to Excel and creates pivot tables
├── visualization/         # Excel dashboards
│   ├── dashboard.xlsx     # Final visualization sheet
├── README.md              # Project documentation
```

## Future Enhancements
- Automate data import and cleaning using Python scripts.
- Develop an interactive dashboard in **Power BI or Tableau**.
- Implement machine learning models for predictive analytics on boat sales and usage trends.

## Contributors
- **[Your Name]** – Data Processing & Visualization
- **[Other Contributors]** – SQL Data Cleaning, Python Scripting

## License
This project is licensed under the **MIT License**.

---
Feel free to contribute or suggest improvements!
