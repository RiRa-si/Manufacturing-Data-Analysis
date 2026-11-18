
-- ============================================
-- PROJECT: MANUFACTURING DATA ANALYSIS
-- FILE: 02_BASIC_QUERIES.SQL
-- TOPIC: BASIC SQL QUERIES
-- ============================================

-- Analysis 01: Understanding the Manufacturing Dataset
-- Business Question:
-- What information is available in our manufacturing dataset?
-- Objective:
-- Explore the dataset structure and inspect sample records.


-- Q1. Display all records and columns.

SELECT *
FROM manufacturing_data;


-- Q2. Display the first 10 records with selected columns.

SELECT
    machine_id,
    machine_type,
    operating_mode,
    vibration_rms,
    temperature_motor,
    failure_within_24h,
    failure_type
FROM manufacturing_data
LIMIT 10;


-- Q3. Find the total number of records.

SELECT COUNT(*) AS total_records
FROM manufacturing_data;
