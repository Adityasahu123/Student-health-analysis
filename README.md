# Student Health Analysis Project

## Overview
This project analyzes various factors related to student mental health and depression. It explores correlations between depression and different variables such as sleep duration, study hours, academic pressure, financial stress, and study satisfaction.

## Dataset
The primary dataset (`Depression+Student+Dataset.csv`) contains 504 student records with the following variables:
- Gender
- Age
- Academic Pressure (scale 1-5)
- Study Satisfaction (scale 1-5)
- Sleep Duration (categories: "Less than 5 hours", "5-6 hours", "7-8 hours", "More than 8 hours")
- Dietary Habits (categories: "Healthy", "Moderate", "Unhealthy")
- Suicidal Thoughts (Yes/No)
- Study Hours (0-12 hours)
- Financial Stress (scale 1-5)
- Family History of Mental Illness (Yes/No)
- Depression (Yes/No)

## Visualizations
The project includes several Tableau visualizations:
- `Study Hours & Student Count.twb` - Analyzes the relationship between study hours and depression
- `Sleep Duration & Student Count.twb` - Examines how sleep patterns correlate with depression
- `Study Satisfaction & Student Count.twb` - Shows how satisfaction with studies relates to depression
- `Financial Stress & Student Count.twb` - Explores the impact of financial stress on mental health
- `Academic Pressure & Student Count.twb` - Investigates the relationship between academic pressure and depression
- `dashboard.twb` - A comprehensive dashboard combining key insights

## SQL Analysis
The project includes several SQL queries for data preparation and analysis:
- `SQLQuery1.sql` - Initial data exploration
- `SQLQuery2.sql` - Relationship analysis between variables
- `SQLQuery3.sql` - Demographic analysis
- `SQLQuery4.sql` - Stress factor analysis
- `SQLQuery5.sql` - Data cleaning and transformation (converting depression values from 0/1 to No/Yes)

## Key Findings
- Relationships between sleep patterns and mental health
- Impact of study hours on depression
- Correlation between academic pressure and mental health
- Role of financial stress in student depression
- Influence of study satisfaction on mental wellbeing

## Tools Used
- Microsoft SQL Server - For data storage and analysis
- Tableau - For data visualization and dashboard creation

## How to Use
1. Explore the SQL queries to understand the data cleaning and analysis process
2. Open the Tableau workbooks (.twb files) to view the visualizations
3. Reference the dashboard for a comprehensive overview of all findings

## Future Work
- Expand the dataset with additional variables
- Conduct longitudinal analysis to track changes over time
- Implement predictive models to identify at-risk students
- Develop intervention strategies based on findings 