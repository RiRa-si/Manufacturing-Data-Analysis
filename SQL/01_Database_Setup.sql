
-- ============================================
-- PROJECT: MANUFACTURING DATA ANALYSIS
-- FILE: 01_DATABASE_SETUP.SQL
-- PURPOSE: CREATE AND SELECT DATABASE
-- ============================================


-- Step 1: Create the project database

CREATE DATABASE IF NOT EXISTS manufacturing_analysis;


-- Step 2: Select the database

USE manufacturing_analysis;


-- Step 3: Verify the selected database

SELECT DATABASE();
