# Consumer-Financial-Complaints-Analysis
This project analyzes the Consumer Financial Complaints dataset published by the Consumer Financial Protection Bureau (CFPB) to identify patterns in consumer dissatisfaction with financial products and services.

The objective of this project is to analyze complaint trends, identify high-risk financial products and companies, and evaluate the effectiveness of company responses to consumer complaints.

The analysis was conducted as part of the Microsoft Elevate Internship – Power BI Track.

Project Objectives

The project aims to answer the following key questions:

Which financial products generate the highest number of complaints?

Which companies receive the most consumer complaints?

What issues are most frequently reported by consumers?

How effective are company responses in resolving complaints?

Which complaints result in consumer disputes?

Dataset

Source:
Consumer Financial Protection Bureau (CFPB)

Dataset Link:
https://www.consumerfinance.gov/data-research/consumer-complaints/

The dataset contains consumer complaints related to financial services including:

Credit cards

Credit reporting

Debt collection

Mortgages

Bank accounts

For this project, complaints from 2020–2025 were analyzed.

Tools & Technologies

PostgreSQL – Data cleaning and preparation

Power BI Desktop – Data visualization and dashboard creation

Power BI Service – Dashboard publishing and sharing

Microsoft Excel – Initial dataset inspection

Data Preparation

The dataset was processed using PostgreSQL before visualization.

Key steps included:

Importing the CFPB complaint dataset into PostgreSQL

Filtering complaints from 2020–2025

Removing records with missing critical fields

Standardizing product categories

Extracting time features such as year and month

Creating analytical views to support Power BI dashboards

These steps ensured the dataset was clean, structured, and ready for analysis.

Power BI Dashboard

The Power BI report contains three analytical dashboards.

1. Complaint Overview

This dashboard provides a high-level summary of consumer complaints.

Key metrics include:

Total complaints

Complaint trends over time

Financial products generating the most complaints

Companies receiving the highest complaint volumes

2. Complaint Issue Analysis

This dashboard analyzes the specific issues reported by consumers.

Key insights include:

Most frequently reported consumer issues

Complaint distribution across financial products and sub-products

Relationships between financial products and complaint issues

3. Dispute & Resolution Analysis

This dashboard evaluates the effectiveness of company responses to complaints.

Key insights include:

Dispute rates across financial products

Dispute rates across companies

Impact of company response types on dispute outcomes

The analysis shows that complaints resolved with monetary relief have significantly lower dispute rates.

Key Insights

Credit reporting and credit cards generate the highest complaint volumes.

The most common issue reported involves incorrect information on credit reports.

Certain companies receive significantly higher complaint volumes.

Approximately 44% of complaints remain disputed, indicating unresolved consumer dissatisfaction.

Complaints resolved with monetary relief show the lowest dispute rates, suggesting financial compensation is the most effective resolution strategy.

Recommendations

Based on the analysis:

Improve complaint resolution processes

Increase transparency in credit reporting systems

Strengthen oversight of debt collection practices

Encourage companies to prioritize effective resolutions over explanatory responses
