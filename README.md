# SwiggyDataAnalysis

## Project Purpose
The purpose of this project is to analyze restaurant data from Swiggy, a popular online food ordering platform, to derive insights that can help improve business decisions. By exploring various attributes such as restaurant ratings, city distribution, cuisine types, and pricing, this project aims to answer key business questions that could aid in strategic planning and customer satisfaction.

## Scenario

As a data analyst working for an online food delivery service, I am tasked with analyzing Swiggy restaurant data to inform business decisions. The dataset includes information about restaurants, their locations, ratings, cuisine types, and menu items. The analysis aims to identify trends and patterns that can be leveraged to enhance the user experience and optimize the platform's offerings.

## About Data

The dataset used in this project contains information on restaurants listed on Swiggy. This data contains 12 columns and 792 rows:

![Alt text](https://github.com/OlanikeCJ/SwiggyDataAnalysis/blob/main/Untitled%20spreadsheet%20-%20Sheet1_page-0001.jpg
)

## Approach Used

1. **Data Wrangling**: This is the first step where inspection of data is done to make sure NULL values and missing values are detected and data replacement methods are used to replace missing or NULL values.
> * Build a database
> * Create a table and insert the data.
> * Select columns with null values in them. There are no null values in our database as in creating the tables, we set NOT NULL for each field, hence null values are filtered out.

2. **Exploratory Data Analysis (EDA)**: Exploratory data analysis is done to answer the listed questions and aims of this project.

3. **Conclusion**:

## Business Questions Answered

This project addresses several key business questions, including:

1. How many restaurants have a rating greater than 4.5?
2. Which is the top city with the highest number of restaurants?
3. How many restaurants have the word "Pizza" in their name?
4. What is the most common cuisine type offered by the restaurants?
5. Which restaurant has the highest cost per person?

## Code
For the rest of the code, check the SQL file => [Swiggy.sql](swiggy.sql)

```sql
-- CREATE DATABASE SwiggyData;

USE SwiggyData;

-- CREATE TABLE swiggy(
restaurant_no INTEGER NOT NULL PRIMARY KEY,
restaurant_name VARCHAR(50) NOT NULL,
city VARCHAR(9) NOT NULL,
address VARCHAR(204),
rating NUMERIC(3,1) NOT NULL,
cost_per_person INTEGER,
cuisine VARCHAR(49) NOT NULL,
restaurant_link VARCHAR(136) NOT NULL,
menu_category VARCHAR(66),
item VARCHAR(188),
price VARCHAR(12) NOT NULL,
veg_or_nonveg VARCHAR(7)
);
```
