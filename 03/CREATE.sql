CREATE DATABASE car_rental;

USE car_rental;

CREATE TABLE categories(
id INT AUTO_INCREMENT UNIQUE,
category VARCHAR(50) NOT NULL,
daily_rate DOUBLE(7,2),
weekly_rate DOUBLE(7,2),
monthly_rate DOUBLE(7,2),
weekend_rate DOUBLE(7,2));

CREATE TABLE cars(
id INT AUTO_INCREMENT UNIQUE,
plate_number CHAR(8) NOT NULL,
make VARCHAR(20) NOT NULL,
model VARCHAR(20) NOT NULL,
car_year INT NOT NULL,
category_id INT NOT NULL,
doors INT NOT NULL,
picture INT NULL,
 car_condition VARCHAR(200) NOT NULL,
 available BOOL NOT NULL
);

CREATE TABLE employees (
id INT AUTO_INCREMENT UNIQUE,
first_name VARCHAR(50) NOT NULL ,
last_name VARCHAR(50) NOT NULL ,
title VARCHAR(500) NOT NULL ,
notes VARCHAR(1000) NOT NULL
);

CREATE TABLE customers(
id INT AUTO_INCREMENT UNIQUE,
driver_licence_number INT NOT NULL,
full_name VARCHAR(50) NOT NULL,
address VARCHAR(50) NOT NULL,
city VARCHAR(20) NOT NULL,
zip_code INT NOT NULL,
notes VARCHAR(200)
);

CREATE TABLE rental_orders(
id INT AUTO_INCREMENT UNIQUE,
employee_id INT NOT NULL,
customer_id INT NOT NULL,
car_id INT NOT NULL,
car_condition VARCHAR(200),
tank_level DOUBLE(10,2) NOT NULL,
kilometrage_start DOUBLE(20,2) NOT NULL,
kilometrage_end DOUBLE(20,2) NOT NULL,
total_kilometers DOUBLE(20,2) NOT NULL,
start_date DATE NOT NULL,
end_date DATE NOT NULL,
total_days INT NOT NULL,
rate_applied DOUBLE(7,2),
tax_rate DOUBLE(7,2),
order_status VARCHAR(10),
notes VARCHAR(200)
);

CREATE TABLE name_result SELECT concat(first_name, ' ', last_name) AS Full_Name, id AS 'NO' FROM employees;

CREATE TABLE car_result SELECT * FROM cars WHERE id BETWEEN 1 AND 3;