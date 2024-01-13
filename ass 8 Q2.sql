CREATE TABLE CUSTOMER (
    CUST_ID INT PRIMARY KEY,
    NAME VARCHAR(255),
    OCCUPATION VARCHAR(255),
    AGE INT
);

INSERT INTO CUSTOMER (CUST_ID, NAME, OCCUPATION, AGE) VALUES
(101, 'PETER', 'ENGINEER', 32),
(102, 'JOSEPH', 'DEVELOPER', 30),
(103, 'JOHN', 'LEADER', 28),
(104, 'STEPHEN', 'SCIENTIST', 45),
(105, 'SUZI', 'CARPENTER', 26),
(106, 'BOB', 'ACTOR', 25),
(107, NULL, NULL, NULL);

CREATE TABLE ORDERS (
    ORDER_ID INT PRIMARY KEY,
    CUST_ID INT,
    PROD_NAME VARCHAR(255),
    ORDER_DATE DATE
);

INSERT INTO ORDERS (ORDER_ID, CUST_ID, PROD_NAME, ORDER_DATE) VALUES
(1, 101, 'LAPTOP', '2022-01-10'),
(2, 103, 'DESKTOP', '2022-02-11'),
(3, 106, 'IPHONE', '2022-03-13'),
(4, 104, 'MOBILE', '2022-03-05'),
(5, 102, 'TV', '2022-03-20');

-- Find the details of the customers whose details is not in the customer table.
SELECT *
FROM CUSTOMER
WHERE CUST_ID IS NULL;

-- The customer details who have not placed an order.
SELECT C.*
FROM CUSTOMER C
LEFT JOIN ORDERS O ON C.CUST_ID = O.CUST_ID
WHERE O.ORDER_ID IS NULL;

-- Find the name of the customers who has purchased laptop.
SELECT C.NAME
FROM CUSTOMER C
JOIN ORDERS O ON C.CUST_ID = O.CUST_ID
WHERE O.PROD_NAME = 'LAPTOP';

-- Find the details of customers who purchased iphone.
SELECT C.*
FROM CUSTOMER C
JOIN ORDERS O ON C.CUST_ID = O.CUST_ID
WHERE O.PROD_NAME = 'IPHONE';

-- Find the details of the customers whose details is not in the orders table.
SELECT C.*
FROM CUSTOMER C
LEFT JOIN ORDERS O ON C.CUST_ID = O.CUST_ID
WHERE O.CUST_ID IS NULL;

-- How many customers from customers table has made an order.
SELECT COUNT(DISTINCT C.CUST_ID) AS num_customers_with_orders
FROM CUSTOMER C
JOIN ORDERS O ON C.CUST_ID = O.CUST_ID;
