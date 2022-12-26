ALTER TABLE categories
ADD CONSTRAINT pk_id_categories PRIMARY KEY (id);

ALTER TABLE cars
ADD CONSTRAINT pk_id_cars PRIMARY KEY (id);

ALTER TABLE employees
ADD CONSTRAINT pk_id_employees PRIMARY KEY (id);

ALTER TABLE customers
ADD CONSTRAINT pk_id_customers PRIMARY KEY (id);

ALTER TABLE rental_orders
ADD CONSTRAINT pk_id_rental_orders PRIMARY KEY (id);

ALTER TABLE rental_orders
ADD CONSTRAINT fk_employee_id FOREIGN KEY (employee_id) REFERENCES employees(id),
ADD CONSTRAINT fk_customer_id FOREIGN KEY (customer_id) REFERENCES customers(id),
ADD CONSTRAINT fk_car_id FOREIGN KEY (car_id) REFERENCES cars(id);

ALTER TABLE cars
ADD CONSTRAINT fk_category_id FOREIGN KEY (category_id) REFERENCES categories(id);

ALTER TABLE cars
MODIFY COLUMN plate_number CHAR(10) NOT NULL;