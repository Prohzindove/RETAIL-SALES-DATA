-- Databricks notebook source
USE brightlearn.data;

SELECT*
FROM retail_sales_dataset;

-- 1. Which product categories generated more than 150,000 in total sales? 
SELECT `Product Category`,
       SUM(`Total Amount`) AS total_sales
FROM retail_sales_dataset
GROUP BY `Product Category`
HAVING SUM(`Total Amount`) >150000;

SELECT `Product Category`,
       SUM(`Total Amount`) AS total_sales
FROM retail_sales_dataset
GROUP BY `Product Category`
HAVING total_sales >150000;

-- 2. Which genders generated an average transaction value above 300?  
SELECT Gender,
      AVG(`Total Amount`) AS AVG_Transaction_value
FROM retail_sales_dataset
GROUP BY Gender
HAVING AVG(`Total Amount`) >300;


-- 3. Find the top 5 customers with the highest total spending. 
SELECT*
FROM retail_sales_dataset
ORDER BY `Total Amount`DESC
LIMIT 5;



-- 4. Which product categories have more than 300 transactions? 
SELECT

-- 5. What is the highest sale amount recorded for each product category? 


-- 6. Find the minimum sale amount for each gender. 


-- 7. Show categories where the average quantity sold is greater than 2. 


-- 8. Find the total sales for customers aged between 25 and 40 who purchased Beauty or Clothing products.


-- 9. Which product categories have a maximum sale amount greater than 1000?


-- 10. Show the top 3 categories by average sales value, excluding customers under 25.
