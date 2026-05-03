----- QUESTION 01

SELECT first_name, last_name, city, phone
FROM sales.customers
WHERE state = 'CA'
  AND phone IS NOT NULL;

----- QUESTION 02

SELECT product_id, product_name, model_year, list_price
FROM production.products ORDER BY model_year DESC, list_price ASC;

----- QUESTION 03
--A
SELECT TOP 5 product_name, list_price
FROM production.products
ORDER BY list_price DESC;
 --B
SELECT TOP 5 PERCENT *
FROM production.products
ORDER BY list_price ASC;

----- QUESTION 04

---a 
SELECT product_id, product_name, list_price
FROM production.products
ORDER BY list_price DESC
OFFSET 0 ROWS
FETCH NEXT 10 ROWS ONLY;

---b
SELECT product_id, product_name, list_price
FROM production.products
ORDER BY list_price DESC
OFFSET 10 ROWS
FETCH NEXT 10 ROWS ONLY;

---c
SELECT product_id, product_name, list_price
FROM production.products
ORDER BY list_price DESC
OFFSET 20 ROWS
FETCH NEXT 10 ROWS ONLY;


----- QUESTION 05
--a 
SELECT DISTINCT state
FROM sales.customers
ORDER BY state ASC; 

--b
SELECT DISTINCT state, city
FROM sales.customers
ORDER BY state ASC, city ASC;

--c 
SELECT COUNT(DISTINCT model_year) AS unique_model_years
FROM production.products;

--View distinct values
SELECT DISTINCT model_year
FROM production.products
ORDER BY model_year;



----- QUESTION 06

SELECT product_id, product_name, brand_id, category_id, list_price
FROM production.products
WHERE list_price BETWEEN 500 AND 1500
  AND (model_year = 2019 OR model_year = 2020)
ORDER BY list_price ASC;