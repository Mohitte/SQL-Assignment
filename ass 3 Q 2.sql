CREATE DATABASE CARSHOWROOM;
USE CARSHOWROOM;
-- INVENTORY table
CREATE TABLE INVENTORY (
    car_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    model VARCHAR(255) NOT NULL,
    year_of_manufacturing INT NOT NULL,
    fuel_type VARCHAR(255) NOT NULL
);

-- CUSTOMER table
CREATE TABLE CUSTOMER (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    phone_number VARCHAR(20) NOT NULL,
    email VARCHAR(255)
);

-- EMPLOYEE table
CREATE TABLE EMPLOYEE (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    date_of_birth DATE,
    date_of_joining DATE,
    designation VARCHAR(255),
    salary DECIMAL(10, 2)
);


-- SALE table
CREATE TABLE SALE (
    invoice_number INT PRIMARY KEY AUTO_INCREMENT,
    car_id INT,
    customer_id INT,
    sale_date DATE,
    mode_of_payment VARCHAR(50),
    employee_id INT,
    selling_price DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (car_id) REFERENCES INVENTORY(car_id),
    FOREIGN KEY (customer_id) REFERENCES CUSTOMER(customer_id),
    FOREIGN KEY (employee_id) REFERENCES EMPLOYEE(employee_id)
);


select * from INVENTORY;
select * from CUSTOMER;
select * from EMPLOYEE;
select * from sale;


