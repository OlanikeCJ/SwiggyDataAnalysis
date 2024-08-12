CREATE DATABASE SwiggyData;

USE SwiggyData;

CREATE TABLE swiggy(
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

select * from swiggy;

#How many restaurants have a rating greater than 4.5?
SELECT 
    COUNT(rating) AS no_of_rating
FROM
    swiggy
WHERE
    rating > '4.5';

#WHICH IS THE TOP 1 CITY WITH THE HIGHEST NUMBER OF RESTAURANTS?
SELECT 
    city, COUNT(DISTINCT restaurant_name) AS restaurant_no
FROM
    swiggy
GROUP BY city
ORDER BY restaurant_no DESC
LIMIT 1;

#HOW MANY RESTAURANTS HAVE THE WORD "PIZZA" IN THEIR NAME?

SELECT 
    COUNT(distinct restaurant_name) AS pizza_restaurant
FROM
    swiggy
WHERE
    restaurant_name = 'PIZZA';
    
    
#WHAT IS THE MOST COMMON CUISINE AMONG THE RESTAURANTS IN THE DATASET?
SELECT 
    cuisine, COUNT(cuisine) AS most_common_cuisine
FROM
    swiggy
GROUP BY cuisine
ORDER BY most_common_cuisine DESC
LIMIT 1;

#WHAT IS THE AVERAGE RATING OF RESTAURANTS IN EACH CITY?
SELECT 
    AVG(rating) as avg_rating, city
FROM
    swiggy
GROUP BY city;

#WHAT IS THE HIGHEST PRICE OF ITEM UNDER THE 'RECOMMENDED' MENU CATEGORY FOR EACH RESTAURANT?
SELECT 
    distinct restaurant_name, MAX(price) AS price
FROM
    swiggy
WHERE
    menu_category = 'Recommended'
GROUP BY restaurant_name
ORDER BY price DESC;

SELECT * FROM swiggy;

#FIND THE TOP 5 MOST EXPENSIVE RESTAURANTS THAT OFFER CUISINE OTHER THAN INDIAN CUISINE.
SELECT DISTINCT
    cost_per_person, restaurant_name, cuisine
FROM
    swiggy
HAVING cuisine <> 'Indian'
ORDER BY cost_per_person DESC
LIMIT 5;

#FIND THE RESTAURANTS THAT HAVE AN AVERAGE COST WHICH IS HIGHER THAN THE TOTAL AVERAGE COST OF ALL RESTAURANTS TOGETHER.
SELECT DISTINCT cost_per_person, restaurant_name
FROM
    swiggy
WHERE cost_per_person>(SELECT AVG(cost_per_person) FROM swiggy)
GROUP BY cost_per_person, restaurant_name
ORDER BY restaurant_name DESC;
    
    
#RETRIEVE THE DETAILS OF RESTAURANTS THAT HAVE THE SAME NAME BUT ARE LOCATED IN DIFFERENT CITIES.
SELECT 
    t1.restaurant_name, t1.city, t2.city
FROM
    swiggy t1
        JOIN
    swiggy t2 ON t1.restaurant_name = t2.restaurant_name
        AND t1.city <> t2.city;

#WHICH RESTAURANT OFFERS THE MOST NUMBER OF ITEMS IN THE 'MAIN COURSE'CATEGORY?
SELECT DISTINCT
    restaurant_name, menu_category, COUNT(item) AS no_of_item
FROM
    swiggy
WHERE
    menu_category = 'Main Course'
GROUP BY restaurant_name , menu_category
ORDER BY no_of_item DESC
LIMIT 1;


#WHICH RESTAURANT IS PROVIDING THE LOWEST AVERAGE PRICE FOR ALL ITEMS
SELECT DISTINCT
    restaurant_name, AVG(price) AS avg_price
FROM
    swiggy
GROUP BY restaurant_name
ORDER BY avg_price
LIMIT 1;

#WHICH TOP 5 RESTAURANT OFFERS HIGHEST NUMBER OF CATEGORIES?
SELECT DISTINCT
    restaurant_name, COUNT(distinct menu_category) AS no_of_category
FROM
    swiggy
GROUP BY restaurant_name
ORDER BY no_of_category DESC
LIMIT 5;




