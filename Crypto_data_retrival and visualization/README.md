# Crypto Data Retrieval and Visualization

## Overview
This project focuses on retrieving cryptocurrency data from CoinMarketCap's API, cleaning and exporting the data as a CSV file, converting it into an XLSX format using Excel, and finally importing and visualizing it in Power BI.

## Workflow
1. **Fetch Data from CoinMarketCap API**  
   - Use the CoinMarketCap API to retrieve cryptocurrency market data.
   - Parse the JSON response and extract relevant information such as price, market cap, volume, and supply.
   
2. **Clean and Export Data as CSV**  
   - Process and structure the data using Python (e.g., Pandas).
   - Remove unnecessary columns, handle missing values, and ensure data consistency.
   - Export the cleaned data as a CSV file.
   
3. **Convert CSV to XLSX in Excel**  
   - Open the CSV file in Excel.
   - Save it as an XLSX file for compatibility with Power BI.

4. **Import Data into Power BI**  
   - Load the XLSX file into Power BI.
   - Perform additional data cleaning, such as:
     - Using the first row as headers.
     - Changing data types where necessary (e.g., converting text to numbers or dates).

5. **Create Data Visualizations**  
   - Build interactive dashboards in Power BI.
   - Include charts and graphs that display trends, comparisons, and insights.
   - Examples: Line charts for price trends, bar charts for market cap distribution, etc.

## Requirements
- **Python Libraries:**
  - `requests` (for API calls)
  - `pandas` (for data processing)
- **Excel** (for format conversion)
- **Power BI** (for data visualization)

## How to Run
1. **Set Up API Key:** Register on [CoinMarketCap](https://coinmarketcap.com/) and obtain an API key.
2. **Run Python Script:** Execute the script to fetch and clean data.
3. **Save as CSV:** Ensure the output file is in CSV format.
4. **Open in Excel:** Convert CSV to XLSX.
5. **Load into Power BI:** Import the XLSX file and refine data further.
6. **Create Visualizations:** Build your dashboards in Power BI.

## Example Output
- A CSV file containing structured cryptocurrency data.
- Power BI dashboard visualizing price trends, market caps, and trading volumes.

## Future Improvements
- Automate Excel conversion using Python (`openpyxl` or `xlsxwriter`).
- Implement real-time data fetching and dashboard updates.
- Enhance visualizations with dynamic filters and user interactions.

## License
This project is open-source under the MIT License.
