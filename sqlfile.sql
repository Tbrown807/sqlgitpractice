select * from [Sample - Superstore]
--select first 10 rows of all attribute
select top(10) * from [Sample - Superstore]

--fetching specified column
SELECT ship_mode, customer_name
FROM [Sample - Superstore]
--using aliase and calcuate the unit price of each quantity
SELECT product_name, customer_name as name_, (sales/Quantity) as unit_price
FROM [Sample - Superstore]

--using where clause with > operation
SELECT ship_mode, customer_name, product_name, city, sales, quantity
FROM [Sample - Superstore]
WHERE Quantity > 4;

SELECT ship_mode, customer_name, product_name, city, sales, quantity
FROM [Sample - Superstore]
WHERE Quantity BETWEEN 2 AND 4;

SELECT ship_mode, customer_name, product_name, city, sales, quantity
FROM [Sample - Superstore]
WHERE Quantity >=2 AND Quantity < 5

--USING WHERE CLAUSE AND LIKE OPERATOR
SELECT ship_mode, customer_name, product_name, city, sales, quantity
FROM [Sample - Superstore]
WHERE City LIKE 'A%' and Quantity < 4
--End word like
SELECT ship_mode, customer_name, product_name, city, sales, quantity
FROM [Sample - Superstore]
WHERE city LIKE '%on'

--middle or in between like
SELECT ship_mode, customer_name, product_name, city, sales, quantity
FROM [Sample - Superstore]
WHERE city LIKE '%_m_%'

--using in operator find the transaction of Ken Black,Joel Eaton,Ryan Crowe
SELECT ship_mode, customer_name, product_name, city, sales, quantity
FROM [Sample - Superstore]
WHERE Customer_name IN ('Ken Black','Joel Eaton','Ryan Crowe')

--ORDER CLAUSE
SELECT ship_mode, customer_name, product_name, city, sales, quantity
FROM [Sample - Superstore]
WHERE Customer_name IN ('Ken Black','Joel Eaton','Ryan Crowe')
ORDER BY Quantity desc

--GROUP BY CLAUSE
SELECT city FROM [Sample - Superstore]
GROUP BY city

SELECT city, count(*)as customer_count FROM [Sample - Superstore]
GROUP BY city
HAVING count(*)>100;

SELECT city, SUM(sales)AS Total_sales, MAX(Quantity), count(*) As 'number of transaction'
FROM [Sample - Superstore]
GROUP BY city
ORDER BY total_sales DESC C
 