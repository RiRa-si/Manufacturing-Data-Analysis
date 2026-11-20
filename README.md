# Manufacturing Data Analysis

## Project Overview

This project focuses on analyzing manufacturing machine data to understand machine performance, operating conditions, and recorded failure patterns.

The objective is to explore machine sensor measurements, identify patterns associated with positive failure labels, and present meaningful insights through Python, SQL, and Power BI.

The project follows an end-to-end data analysis workflow, covering data cleaning, exploratory data analysis, SQL-based business analysis, and interactive dashboard development.

## Business Objectives

- Understand the overall distribution of manufacturing machine records.
- Analyze machine performance across different machine types.
- Examine operating conditions and their relationship with positive failure labels.
- Identify machines with comparatively higher recorded failure-label rates.
- Analyze sensor measurements such as temperature, vibration, pressure, and RPM.
- Build an interactive dashboard to communicate key findings.

## Tools & Technologies

| Tool | Purpose |
|---|---|
| Python | Data analysis and cleaning |
| Pandas | Data manipulation |
| NumPy | Numerical operations |
| Matplotlib | Data visualization |
| Seaborn | Statistical visualization |
| MySQL | SQL-based business analysis |
| Power BI | Interactive dashboard development |

## Dataset Overview

The project uses manufacturing machine sensor data containing operational measurements and failure-related information.

**Dataset details:**
- Total records: 24,042
- Total columns: 15
- Unique machines: 20
- Machine types: 4
- Data period: January 1–14, 2024

**Important columns include:**
- `TIMESTAMP`
- `MACHINE_ID`
- `MACHINE_TYPE`
- `VIBRATION_RMS`
- `TEMPERATURE_MOTOR`
- `CURRENT_PHASE_AVG`
- `PRESSURE_LEVEL`
- `RPM`
- `OPERATING_MODE`
- `HOURS_SINCE_MAINTENANCE`
- `RUL_HOURS`
- `FAILURE_WITHIN_24H`
- `FAILURE_TYPE`
- `ESTIMATED_REPAIR_COST`

## Project Workflow

### 1. Python – Data Cleaning & Exploratory Data Analysis

- Inspected dataset structure, dimensions, and data types.
- Identified missing values and duplicate records.
- Handled missing sensor measurements using median imputation.
- Performed exploratory data analysis.
- Analyzed machine types, operating modes, and failure-label distribution.
- Examined sensor distributions and potential outliers.
- Explored relationships between sensor measurements using correlation analysis.
- Created visualizations to communicate findings.

### 2. MySQL – Business Analysis

Performed SQL analysis using:

- SELECT, WHERE, ORDER BY
- Aggregate functions
- GROUP BY and HAVING
- CASE WHEN statements
- JOIN operations
- Subqueries
- Business-oriented analysis queries

Analyzed machine performance, operating modes, failure categories, sensor measurements, and machine-level positive failure-label rates.

### 3. Power BI – Interactive Dashboard

Developed an interactive Manufacturing Performance Dashboard containing:

- Total Records
- Positive Failure Records
- Positive Failure Label Rate
- Average Motor Temperature
- Positive Failure Rate by Machine Type
- Positive Failure Rate by Operating Mode
- Average Motor Temperature by Machine Type
- Average Vibration by Machine Type
- Daily Positive Failure Records

**Interactive filters:**
- Machine Type
- Operating Mode
- Date Range

## Key Findings

- The dataset contains 24,042 records across 20 machines and 4 machine types.
- There are 3,560 records with a positive failure-within-24-hours label, representing 14.81% of all records.
- Compressor machines have the highest positive failure-label rate among machine types at 16.00%.
- Peak operating mode has the highest positive failure-label rate among operating modes at 16.02%.
- Machine 13 has the highest machine-level positive failure-label rate at 23.94%.
- Average motor temperature across the dataset is 51.36°C.
- Average vibration is 1.61.
- Current and pressure measurements show a strong positive correlation of approximately 0.85.

## Important Analytical Considerations

- Positive failure labels represent records where `FAILURE_WITHIN_24H = 1`; they should not be interpreted as unique physical failure events.
- Observed relationships and correlations do not establish causation.
- Estimated repair cost represents an estimate, not confirmed actual expenditure.
- Potential statistical outliers are not automatically confirmed equipment faults.

## Repository Structure

```text
Manufacturing-Data-Analysis/
│
├── Python/
│   ├── README.md
│   ├── 01_Manufacturing_Data_Analysis.ipynb
│   └── manufacturing_cleaned.csv
│
├── SQL/
│   ├── 01_Database_Setup.sql
│   ├── 02_Basic_Queries.sql
│   ├── 03_Filtering_and_Sorting.sql
│   ├── 04_Aggregate_Functions.sql
│   ├── 05_Group_By_and_Having.sql
│   ├── 06_CASE_WHEN.sql
│   ├── 07_JOINS.sql
│   ├── 08_Subqueries.sql
│   └── 09_Business_Analysis.sql
│
├── PowerBI/
│   └── Manufacturing_Performance_Dashboard.pbix
│
├── Screenshots/
│
└── README.md
```

## Conclusion

This project demonstrates the application of Python, SQL, and Power BI in a practical manufacturing data analysis scenario.

It provides experience in data cleaning, exploratory analysis, SQL querying, business insight generation, and interactive dashboard development.

## Dataset Source

- **Source:** Kaggle
- **Dataset:** Manufacturing Predictive Maintenance Dataset
- **Description:** Manufacturing machine sensor measurements, operating conditions, and failure-related information.

*Note: Add the original Kaggle dataset URL here so readers can access the source.*

## Author

**Ritesh Raj**

- GitHub: https://github.com/RiRa-si
- LinkedIn: https://www.linkedin.com/in/ritesh-raj-6259b9328/

