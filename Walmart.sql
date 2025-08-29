CREATE DATABASE walmart;
USE walmart;

SELECT*
FROM walmart.`walmart sql file`;

-- top ten stores by weekly sales
SELECT 
Weekly_Sales,
Store,
Date2
FROM walmart.`walmart sql file`
ORDER BY Store DESC
LIMIT 10;

-- Total number of stores
SELECT Store,
COUNT(Store)
FROM walmart.`walmart sql file`
GROUP BY Store;

-- Year with the highest revenue generated
SELECT
DISTINCT Year,
SUM(Weekly_Sales)
FROM walmart.`walmart sql file`
GROUP BY Year
ORDER BY SUM(Weekly_Sales) DESC;

-- Comparing the average sales during the holiday
SELECT
DISTINCT Holiday_Flag,
AVG(Weekly_Sales)
FROM walmart.`walmart sql file`
GROUP BY Holiday_Flag;


