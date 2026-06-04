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
SELECT `Customer ID`,
        `Total Amount`
FROM retail_sales_dataset
ORDER BY `Total Amount`DESC
LIMIT 5;

-- 4. Which product categories have more than 300 transactions? 
SELECT `Product Category`,
       COUNT(`TRANSACTION ID`) AS Total_transactions
FROM retail_sales_dataset
GROUP BY `PRODUCT CATEGORY`
HAVING COUNT(`TRANSACTION ID`);

-- 5. What is the highest sale amount recorded for each product category? 
SELECT *
FROM retail_sales_dataset
Order BY `Total Amount` DESC
LIMIT 1;

-- 6. Find the minimum sale amount for each gender. 
SELECT Gender,
       MIN(`Total Amount`) AS MIN_Sale_Amount
FROM retail_sales_dataset
GROUP BY Gender;

-- 7. Show categories where the average quantity sold is greater than 2. 
SELECT `Product Category`,
       AVG(Quantity) AS AVG_quantity
FROM retail_sales_dataset
GROUP BY `Product Category`
HAVING AVG(Quantity) >2;

-- 8. Find the total sales for customers aged between 25 and 40 who purchased Beauty or Clothing products.
SELECT SUM(`Total Amount`)
FROM retail_sales_dataset
WHERE Age BETWEEN 25 AND 40
AND `Product Category` IN('Beauty','Clothing');

-- 9. Which product categories have a maximum sale amount greater than 1000?
SELECT `Product Category`,
       MAX(`Total Amount`)
FROM retail_sales_dataset
GROUP BY `Product Category`
HAVING MAX(`Total Amount`) >1000

-- 10. Show the top 3 categories by average sales value, excluding customers under 25.
SELECT `Product Category`,
       AVG(`Total Amount`) AS Avg_Sales
FROM retail_sales_dataset
WHERE Age >= 25
GROUP BY `Product Category`
ORDER BY Avg_Sales DESC
LIMIT 3;



--Display all records in the retail sales table.
--Display only the Customer_ID and Product_Category columns. 
--Display all Electronics sales transactions. 
--Display customers who are older than 40 years. 
--Display transactions where the quantity purchased is 3 or more. 
--Display Beauty product sales where the total amount is greater than 100.
--Display customers whose ages are between 25 and 35. 
--Calculate the total sales amount for all transactions. 
--Calculate the average age of all customers. 
--Find the highest sale amount recorded. 
--Count the total number of transactions. 
--Calculate total sales for each product category. 
--Calculate the average age for each gender. 
--Display all transactions from highest to lowest sales amount. 
--Display all customers from youngest to oldest.  
--Display product categories whose total sales exceed 50,000. 
--Display genders with more than 400 transactions.  
--Display the first 10 records from the table. 
--Display the top 5 highest sales transactions. 
--Display the top 3 product categories by total sales where sales exceed 10,000.
