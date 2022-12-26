INSERT INTO car_result SELECT * FROM cars WHERE id IN(4);

INSERT INTO cars(plate_number, make,model,car_year,category_id,doors,car_condition, available)
VALUES ('VR 2005 VR', 'idk', 'smth', 2005, 1, 4, 'good', true), ('JH 9264 SB', 'kdi', 'htms', 2020, 2, 3, 'bad', true), ('VR 2023 VR', 'ik', 'sh', 2023, 3, 3, 'excellent', false);

INSERT INTO cars(plate_number, make,model,car_year,category_id,doors,car_condition, available) values ('VR 2022 Ve', 'in', 'shshsh', 2033, 2, 2, 'good', false);

INSERT INTO categories (category)
VALUE('one'),('two'),('three');

INSERT INTO employees (first_name, last_name, title, notes)
VALUES ('Dani','Kremenska','DaNiToU','NoN'), ('t','t','t','NoN'), ('dd','dd','dd','NoN');

INSERT INTO employees (first_name, last_name, title, notes)
VALUES ('Dani','Kremenska','DaNiToU','NoN');

INSERT INTO customers (driver_licence_number, full_name, address, city, zip_code)
VALUES (123,'g g g','stttrtreetr','mezdra',3003),(234,'b b b','street','vrts',3002),(345,'f f f','asd strasse','Vratsa',3000);

INSERT INTO rental_orders (employee_id, customer_id, car_id, tank_level, kilometrage_start, kilometrage_end, total_kilometers, start_date, end_date, total_days)
VALUES (2,1,1,6.7, 50000.55, 100000.55,150001.1,'2020-10-12','9999-12-31',214768732),(1,3,2,4.5,22345.86,981634.23,1003980.09,'1212-12-12','2023-6-13',18000),(2,2,2,8.9,9863.32,83275,93138.32,'2000-12-12','2035-5-5',3174);