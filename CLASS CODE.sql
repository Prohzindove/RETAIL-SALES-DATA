select * from retail_sales_dataset
limit 100;

select distinct `Product Category`
from retail_sales_dataset;

select distinct gender
from retail_sales_dataset;

select count('TransactionID')
from retail_sales_dataset;

select *
from retail_sales_dataset
where Age>30;

select *
from retail_sales_dataset
where Age between 30 and 50;

select *
from retail_sales_dataset
order by Quantity Desc
limit 100;

select *
from retail_sales_dataset
order by `Price per Unit` Desc
limit 100;

select Gender,
       COUNT(`Transaction ID`) AS Customers
from retail_sales_dataset
Group by Gender;

select Gender,
       COUNT(`Customer ID`) AS Customers
from retail_sales_dataset
where Age>30
Group by Gender;

select Gender,
       SUM(`Total Amount`) AS Total
       from retail_sales_dataset
       Group by Gender;

select `Product Category`,
       SUM(`Total Amount`) AS Total
       from retail_sales_dataset
       Group by `Product Category`;

select `Product Category`,
       SUM(`Total Amount`) AS Total
       from retail_sales_dataset
       Group by `Product Category`
       Order by Total Desc;

select `Product Category`,
       SUM(`Total Amount`) AS Total
       from retail_sales_dataset
       Group by `Product Category`
       Having Total >150000
       Order by Total Desc;

select `Product Category`,
       SUM(`Total Amount`) AS Total
       from retail_sales_dataset
       Group by `Product Category`
       Having Total >150000
       Order by Total Asc;

select `Product Category`,
       SUM(`Total Amount`) AS Total
       from retail_sales_dataset
       Group by `Product Category`
       Having Total Between 100000 AND 150000
       Order by Total Desc;

select `Product Category`,
       SUM(`Total Amount`) AS Total
       from retail_sales_dataset
       Group by `Product Category`
       Having Total Not Between 100000 AND 150000
       Order by Total Desc;

-- 02/06/2026 
-- Display only the Customer ID and Product Category columns 
SELECT `Customer ID`,
        `Product Category`
FROM retail_sales_dataset;

--Display all electronics sales transactions
SELECT *
FROM retail_sales_dataset
WHERE `Product Category`='Electronics';

--Display customers older than 40
SELECT *
FROM retail_sales_dataset
WHERE Age >40;

--Display transactions where the quantity purchased is 3 or more
SELECT *
FROM retail_sales_dataset
WHERE Quantity >=3;

--Display beauty product sales where the total amount is greater than 100
SELECT *
FROM retail_sales_dataset
WHERE `Product Category` = 'Beauty' 
AND `Total Amount`>100;

-- Display customers whose ages are between 25 and 35
SELECT *
FROM retail_sales_dataset
WHERE Age BETWEEN 25 AND 35;

--Calculate the total sales amount for all transactions
SELECT SUM(`Total Amount`) AS Total_sales
FROM retail_sales_dataset;

--03/06/26
--connecting Databricks to Github
