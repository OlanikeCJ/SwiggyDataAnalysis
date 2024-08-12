# SwiggyDataAnalysis

## Project Purpose
The purpose of this project is to analyze restaurant data from Swiggy, a popular online food ordering platform, to derive insights that can help improve business decisions. By exploring various attributes such as restaurant ratings, city distribution, cuisine types, and pricing, this project aims to answer key business questions that could aid in strategic planning and customer satisfaction.

## Scenario

As a data analyst working for an online food delivery service, I am tasked with analyzing Swiggy restaurant data to inform business decisions. The dataset includes information about restaurants, their locations, ratings, cuisine types, and menu items. The analysis aims to identify trends and patterns that can be leveraged to enhance the user experience and optimize the platform's offerings.

## About Data

The dataset used in this project contains information on restaurants listed on Swiggy. Key attributes include:


> * Restaurant Number: A unique identifier for each restaurant.
> * Restaurant Name: The name of the restaurant.
> * City: The city where the restaurant is located.
> * Address: The address of the restaurant.
> * Rating: The customer rating of the restaurant on a scale of 1 to 5.
> * Cost per Person: The average cost for one person at the restaurant.
> * Cuisine: The type of cuisine offered by the restaurant.
> * Restaurant Link: The URL link to the restaurant’s page on Swiggy.
> * Menu Category: The category of the menu item.
> * Item: The specific menu item available at the restaurant.
> * Price: The price of the menu item.
> * Veg or Non-Veg: Indicates whether the menu item is vegetarian or non-vegetarian.


## Business Questions Answered

This project addresses several key business questions, including:

1. How many restaurants have a rating greater than 4.5?
2. Which is the top city with the highest number of restaurants?
3. How many restaurants have the word "Pizza" in their name?
4. What is the most common cuisine type offered by the restaurants?
5. Which restaurant has the highest cost per person?

## Code
For the rest of the code, check the SQL file => 
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
