-- Databricks notebook source
USE brightlearn.data;

-- COMMAND ----------

--Display 100 rows from the retail sales dataset
select * from retail_sales_dataset 
limit 100;

-- COMMAND ----------

--Display the different product categories in the dataset
select distinct `Product Category`
from retail_sales_dataset;

-- COMMAND ----------

--Display he different types of gender in the dataset
select distinct Gender
from retail_sales_dataset;

-- COMMAND ----------

--What is the total number of entries?
select count('Transaction ID')
from retail_sales_dataset;

-- COMMAND ----------

--Display transactions where customers are older than 30.
select *
from retail_sales_dataset
where Age >30;

-- COMMAND ----------

--Display customers that are aged between 30 and 50
select *
from retail_sales_dataset
where Age between 30 and 50;

-- COMMAND ----------

--Display 100 transactions with the highest quantity purchased.
select *
from retail_sales_dataset
order by Quantity Desc
limit 100;

-- COMMAND ----------

--Display 100 products with the highest price per unit.
select *
from retail_sales_dataset
order by `Price per Unit` Desc
limit 100;

-- COMMAND ----------

--Dislay the purchases that were made by each gender
select Gender,
       COUNT(`Transaction ID`) AS Customers
from retail_sales_dataset
Group by Gender;

-- COMMAND ----------

--Count customers by gender who are older than 30
select Gender,
       COUNT(`Customer ID`) AS Customers
from retail_sales_dataset
where Age>30
Group by Gender;

-- COMMAND ----------

--Display the total gender of each gender class
select Gender,
       SUM(`Total Amount`) AS Total
       from retail_sales_dataset
       Group by Gender;


-- COMMAND ----------

--Calculate total sales for each product category
select `Product Category`,
       SUM(`Total Amount`) AS Total
       from retail_sales_dataset
       Group by `Product Category`;

-- COMMAND ----------

--Rank product categories by total sales from highest to lowest.
select `Product Category`,
       SUM(`Total Amount`) AS Total
       from retail_sales_dataset
       Group by `Product Category`
       Order by Total Desc;

-- COMMAND ----------

--Show product categories with sales greater than 150000 ranked in descending order.
select `Product Category`,
       SUM(`Total Amount`) AS Total
       from retail_sales_dataset
       Group by `Product Category`
       Having Total >150000
       Order by Total Desc;

-- COMMAND ----------


--Show product categories with sales greater than 150000 ranked in ascending order.
select `Product Category`,
       SUM(`Total Amount`) AS Total
       from retail_sales_dataset
       Group by `Product Category`
       Having Total >150000
       Order by Total Asc;

-- COMMAND ----------

--Show product categories with sales not between 100000 and 150000 ranked in descending order
select `Product Category`,
       SUM(`Total Amount`) AS Total
       from retail_sales_dataset
       Group by `Product Category`
       Having Total Not Between 100000 AND 150000
       Order by Total Desc;

-- COMMAND ----------

--Show product categories with sales between 100000 and 150000 ranked in descending order
select `Product Category`,
       SUM(`Total Amount`) AS Total
       from retail_sales_dataset
       Group by `Product Category`
       Having Total Between 100000 AND 150000
       Order by Total Desc;

-- COMMAND ----------

-- 02/06/2026 

-- COMMAND ----------

-- Display only the Customer ID and Product Category columns 
SELECT `Customer ID`,
        `Product Category`
FROM retail_sales_dataset;

-- COMMAND ----------

--Display all electronics sales transactions
SELECT *
FROM retail_sales_dataset
WHERE `Product Category`='Electronics';

-- COMMAND ----------

--Display customers older than 40
SELECT *
FROM retail_sales_dataset
WHERE Age >40;

-- COMMAND ----------

--Display transactions where the quantity purchased is 3 or more
SELECT *
FROM retail_sales_dataset
WHERE Quantity >=3;

-- COMMAND ----------

--Display beauty product sales where the total amount is greater than 100
SELECT *
FROM retail_sales_dataset
WHERE `Product Category` = 'Beauty' 
AND `Total Amount`>100;

-- COMMAND ----------

-- Display customers whose ages are between 25 and 35
SELECT *
FROM retail_sales_dataset
WHERE Age BETWEEN 25 AND 35;

-- COMMAND ----------

--Calculate the total sales amount for all transactions
SELECT SUM(`Total Amount`) AS Total_sales
FROM retail_sales_dataset;
