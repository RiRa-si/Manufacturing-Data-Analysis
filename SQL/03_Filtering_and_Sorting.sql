
-- ============================================
-- PROJECT: MANUFACTURING DATA ANALYSIS
-- FILE: 03_FILTERING_AND_SORTING.SQL
-- TOPIC: WHERE AND ORDER BY
-- ============================================


-- Analysis 02: Identifying Machines with High Vibration
-- Business Question:
-- Which manufacturing records have vibration above 3.0?
-- Objective:
-- Filter records with relatively high vibration readings.


-- Q1. Find records where vibration_rms is greater than 3.0.

SELECT *
FROM manufacturing_data
WHERE vibration_rms > 3.0;

-- 
-- Q2. Find all records where operating_mode is 'peak'.

SELECT *
FROM manufacturing_data
WHERE operating_mode = 'peak';

 
-- Q3. Find records where:
-- motor temperature is greater than 70
-- AND vibration is greater than 3.0.

SELECT *
FROM MANUFACTURING_DATA
WHERE TEMPERATURE_MOTOR > 70 
AND VIBRATION_RMS > 3.0;

-- Q4. Find records where operating_mode
-- is either 'idle' or 'peak'.

SELECT COUNT(*) AS total_records
FROM manufacturing_data
WHERE operating_mode = 'idle'
OR operating_mode = 'peak';


-- Q5. Find records where RPM is between 500 and 1500.

SELECT COUNT(*) AS total_records
FROM manufacturing_data
WHERE rpm BETWEEN 500 AND 1500;


-- Q6. Find records belonging to CNC or Pump machines.

SELECT COUNT(*) AS total_records
FROM manufacturing_data
WHERE machine_type IN ('CNC', 'Pump');


-- Q7. Count records where operating_mode
-- is NOT 'idle'.

SELECT COUNT(*) AS total_records
FROM manufacturing_data
WHERE operating_mode NOT IN ('idle');

-- Q8. Display the 10 records with the highest vibration.
SELECT 
     MACHINE_ID, 
     MACHINE_TYPE,
     VIBRATION_RMS
FROM MANUFACTURING_DATA
ORDER BY VIBRATION_RMS DESC
LIMIT 10;


-- Q9. Display the 10 records with the lowest motor temperature.

SELECT
    machine_id,
    machine_type,
    temperature_motor
FROM manufacturing_data
ORDER BY temperature_motor ASC
LIMIT 10;


-- Q10. Sort records by machine_id in ascending order.
-- Within each machine, sort vibration_rms
-- from highest to lowest.

SELECT
    machine_id,
    machine_type,
    vibration_rms
FROM manufacturing_data
ORDER BY
    machine_id ASC,
    vibration_rms DESC
LIMIT 20;


