/* =========================================================
Name: Varun Arun Joshi
Student ID: STU696bbc555659d1768668245

Project: Consumer Financial Complaints Analysis
Program: Microsoft Elevate Internship – Power BI

Tool Used: PostgreSQL

Purpose:
Prepare and transform the CFPB Consumer Financial Complaints
dataset for analysis and visualization in Power BI.

This script includes:
• Database setup
• Data import
• Data cleaning
• Feature engineering
• Creation of analytical views used in Power BI dashboards

Prepared by: Varun Arun Joshi
========================================================= */


/* ---------------------------------------------------------
1. Create Database
Reason: Create a dedicated environment for storing and
analyzing CFPB consumer complaint data.
--------------------------------------------------------- */

CREATE DATABASE cfpb_complaints_db;


/* ---------------------------------------------------------
2. Create Table Structure
Reason: Define the schema matching the CFPB dataset
so that CSV data can be imported correctly.
--------------------------------------------------------- */

CREATE TABLE complaints (
    date_received DATE,
    product TEXT,
    sub_product TEXT,
    issue TEXT,
    sub_issue TEXT,
    consumer_complaint_narrative TEXT,
    company_public_response TEXT,
    company TEXT,
    state TEXT,
    zip_code TEXT,
    tags TEXT,
    consumer_consent_provided TEXT,
    submitted_via TEXT,
    date_sent_to_company DATE,
    company_response_to_consumer TEXT,
    timely_response TEXT,
    consumer_disputed TEXT,
    complaint_id TEXT
);


/* ---------------------------------------------------------
3. Import Dataset from CSV
Reason: Load the CFPB complaint dataset into PostgreSQL
for data cleaning and analysis.
--------------------------------------------------------- */

COPY complaints
FROM '/path/to/consumer_complaints.csv'
DELIMITER ','
CSV HEADER
QUOTE '"';


/* ---------------------------------------------------------
4. Filter Relevant Time Period
Reason: Limit analysis to recent years (2020–2025)
to study modern complaint trends and company behavior.
--------------------------------------------------------- */

CREATE TABLE complaints_2020_2025 AS
SELECT *
FROM complaints
WHERE date_received >= '2020-01-01';


/* ---------------------------------------------------------
5. Remove Rows with Critical Missing Values
Reason: Rows missing key analytical fields such as
product or issue cannot contribute meaningful insights
and may distort visualizations.
--------------------------------------------------------- */

DELETE FROM complaints_2020_2025
WHERE product IS NULL
   OR issue IS NULL;


/* ---------------------------------------------------------
6. Standardize Product Names
Reason: Normalize product values to avoid inconsistencies
in aggregation and reporting.
--------------------------------------------------------- */

ALTER TABLE complaints_2020_2025
ADD COLUMN product_standardized TEXT;

UPDATE complaints_2020_2025
SET product_standardized = LOWER(product);


/* ---------------------------------------------------------
7. Create Time Features
Reason: Extract year, month, and quarter from the
complaint date to enable time-based trend analysis.
--------------------------------------------------------- */

ALTER TABLE complaints_2020_2025
ADD COLUMN complaint_year INT;

UPDATE complaints_2020_2025
SET complaint_year = EXTRACT(YEAR FROM date_received);


ALTER TABLE complaints_2020_2025
ADD COLUMN complaint_month INT;

UPDATE complaints_2020_2025
SET complaint_month = EXTRACT(MONTH FROM date_received);


ALTER TABLE complaints_2020_2025
ADD COLUMN complaint_quarter INT;

UPDATE complaints_2020_2025
SET complaint_quarter = EXTRACT(QUARTER FROM date_received);


/* ---------------------------------------------------------
8. Create Analytical Views
Reason: Create summarized views that Power BI can use
directly for visualization without heavy computation.
--------------------------------------------------------- */


/* Complaints by Product
Purpose: Identify which financial products generate
the highest number of consumer complaints.
*/

CREATE VIEW complaints_by_product AS
SELECT
    product_standardized,
    COUNT(complaint_id) AS total_complaints
FROM complaints_2020_2025
GROUP BY product_standardized
ORDER BY total_complaints DESC;


/* Complaints by Company
Purpose: Identify companies receiving the highest
volume of consumer complaints.
*/

CREATE VIEW complaints_by_company AS
SELECT
    company,
    COUNT(complaint_id) AS total_complaints
FROM complaints_2020_2025
GROUP BY company
ORDER BY total_complaints DESC;


/* Complaints by Year
Purpose: Analyze complaint trends over time and
detect growth in consumer dissatisfaction.
*/

CREATE VIEW complaints_by_year AS
SELECT
    complaint_year,
    COUNT(complaint_id) AS total_complaints
FROM complaints_2020_2025
GROUP BY complaint_year
ORDER BY complaint_year;


/* Complaints by Issue
Purpose: Identify the most common consumer problems
reported in financial services.
*/

CREATE VIEW complaints_by_issue AS
SELECT
    issue,
    COUNT(complaint_id) AS total_complaints
FROM complaints_2020_2025
GROUP BY issue
ORDER BY total_complaints DESC;


/* ---------------------------------------------------------
End of Data Preparation Script
--------------------------------------------------------- */