# Consumer Financial Complaints Analysis

### Project Overview

This project analyzes the Consumer Financial Complaints dataset published by the Consumer Financial Protection Bureau (CFPB) to identify patterns in consumer dissatisfaction with financial products and services.

The analysis focuses on identifying major complaint drivers, high-risk financial products, and the effectiveness of company responses to consumer complaints.

This project was completed as part of the Microsoft Elevate Internship – Power BI Track.

### Project Objectives

The project aims to answer the following key questions:

Which financial products generate the highest number of complaints?

Which companies receive the most consumer complaints?

What issues are most frequently reported by consumers?

How effective are company responses in resolving complaints?

Which complaints result in consumer disputes?

### Dataset

### Source:
Consumer Financial Protection Bureau (CFPB)

🔗 https://www.consumerfinance.gov/data-research/consumer-complaints/

# The dataset contains consumer complaints related to financial products including:

Credit cards

Credit reporting

Debt collection

Mortgages

Checking and savings accounts

For this analysis, complaints from 2020–2025 were used.

# Tools & Technologies
Tool	                 Purpose
PostgreSQL	           Data cleaning and preparation
Power BI Desktop	     Dashboard creation and visualization
Power BI Service	     Dashboard publishing and sharing

# Data Preparation

The dataset was processed using PostgreSQL before visualization.

# Key preparation steps

Imported the CFPB dataset into PostgreSQL

Filtered complaints between 2020–2025

Removed records with critical missing values

Standardized product categories

Extracted time features (year, month)

Created analytical views for reporting

These steps ensured the dataset was clean, structured, and ready for analysis.

# Power BI Dashboard

The Power BI report consists of three analytical dashboards.

1️⃣ Complaint Overview

Provides a high-level summary of consumer complaints.

Key metrics include:

Total complaints

Complaint trends over time

Financial products generating the most complaints

Companies receiving the highest complaint volumes

2️⃣ Complaint Issue Analysis

Analyzes the types of problems consumers report.

Key insights include:

Most frequently reported consumer issues

Complaint distribution across products and sub-products

Relationship between products and complaint issues

3️⃣ Dispute & Resolution Analysis

Evaluates how effectively companies resolve complaints.

Key insights include:

Dispute rate across financial products

Dispute rate across companies

Impact of company response types on disputes

The analysis shows that complaints resolved with monetary relief have significantly lower dispute rates.

# Key Insights

Credit reporting and credit cards generate the highest complaint volumes.

The most common issue involves incorrect information on credit reports.

Certain companies receive significantly higher complaint volumes.

Approximately 44% of complaints remain disputed.

Monetary relief responses have the lowest dispute rates, indicating more effective complaint resolution.

# Recommendations

Based on the analysis:

Improve complaint resolution processes

Increase transparency in credit reporting systems

Strengthen oversight of debt collection practices

Encourage companies to prioritize effective resolutions over explanatory responses

# Power BI Dashboard
