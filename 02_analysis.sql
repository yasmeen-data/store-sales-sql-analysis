
-- Beginner SQL project
-- Store Sales Analysis
-- Yasmeen

-- Q1: View all sales record 
select * from sales;


-- Q2: Total Revenue
select SUM(amount) AS Total_Revenue 
from sales;   


-- Q3: Total revenue per city
select city, SUM(amount) AS Total_Revenue
from sales GROUP BY city;   


-- Q4: Top performing city based on revenue
select city, SUM(amount) AS Total_Revenue 
from sales 
GROUP BY city 
ORDER BY SUM(amount) DESC 
LIMIT 1;   


-- Q5: Top spending customer
select customer_name, SUM(amount) AS Amount_Spent
from sales 
where amount is not null   					 
GROUP BY customer_name 
ORDER BY SUM(amount) DESC 
LIMIT 1; 				


-- Q6: Customers who spent more than 1000
select customer_name, SUM(amount) AS Total_Spent
from sales 									 
GROUP BY customer_name 
HAVING SUM(amount) > 1000;  					 


-- Q7:  Extract function
SELECT order_date, EXTRACT(MONTH FROM order_date)     
FROM sales;												


-- Q8 : Month With Highest Revenue 
select EXTRACT(month from order_date) AS Month, SUM(amount) AS Total_Revenue
from sales 
where amount is NOT NULL                                   
GROUP BY EXTRACT(month from order_date) 
ORDER BY SUM(amount) DESC 
LIMIT 1;					 


-- Q9 : City With Highest Average Order Value
select city, AVG(amount) AS Avg_Order_Value
from sales
Group BY city                                		 
ORDER BY AVG(amount) DESC
LIMIT 1;											 


-- Q10 : Orders in January month
select count(*) AS January_Orders
from sales 										 
where EXTRACT(month from order_date) = 1;			 


-- Q11 : Count of mumbai orders in february
select count(*) AS Mumbai_Orders_Count
from sales
where city= 'Mumbai' AND EXTRACT(month from order_date) = 2;    


 BUSINESS INSIGHTS 

1. Mumbai generated the highest total revenue.
2. Asha is the top spending customer.
3. January generated more revenue than February.
4. Delhi has the highest average order value.

 

