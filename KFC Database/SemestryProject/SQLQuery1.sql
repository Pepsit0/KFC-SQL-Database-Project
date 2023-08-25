DROP DATABASE KFC;
CREATE DATABASE KFC;

USE KFC;

--Table for the menu of the restaurant

CREATE TABLE menu (
    menu_id INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
    menu_item CHAR(50),
	price DECIMAL(5, 2),
    category CHAR(30),
)

INSERT INTO menu ( menu_item, price, category)
VALUES
  ('Original Recipe Chicken', 4.99, 'Chicken'),
  ('Extra Crispy Chicken', 5.99, 'Chicken'),
  ('Kentucky Grilled Chicken', 6.99, 'Chicken'),
  ('Popcorn Nuggets', 3.99, 'Snacks'),
  ('Famous Bowl', 5.99, 'Bowls'),
  ('Pot Pie', 6.99, 'Bowls'),
  ('Crispy Colonel Sandwich', 4.99, 'Sandwiches'),
  ('Chicken Littles', 2.99, 'Sandwiches'),
  ('Mashed Potatoes & Gravy', 1.99, 'Sides'),
  ('Cole Slaw', 1.99, 'Sides'),
  ('Mac and Cheese', 2.99, 'Sides'),
  ('Biscuit', 0.99, 'Sides'),
  ('Corn on the Cob', 1.49, 'Sides'),
  ('Honey BBQ Sandwich', 4.99, 'Sandwiches'),
  ('Tender Roast Sandwich', 4.99, 'Sandwiches'),
  ('Double Crunch Sandwich', 5.99, 'Sandwiches'),
  ('BBQ Bacon Sandwich', 5.99, 'Sandwiches'),
  ('Hot Wings', 6.99, 'Chicken'),
  ('Spicy Chicken Sandwich', 4.99, 'Sandwiches'),
  ('Nashville Hot Chicken', 7.99, 'Chicken')


SELECT *
FROM menu

--Table for the location of the restaurant

CREATE TABLE store (
  store_id INT PRIMARY KEY IDENTITY (1,1),
  store_name VARCHAR(255),
  address VARCHAR(100),
  city VARCHAR(50),
  state VARCHAR(50),
  country VARCHAR(50),
  phone VARCHAR(20)
);

INSERT INTO store (store_name, address, city, state, country, phone)
VALUES
  ('KFC #1001', '123 Main St', 'Smallville', 'MA', 'USA', '555-555-1212'),
  ('KFC #1002', '456 Elm St', 'Bigville', 'TX', 'USA', '555-555-1234'),
  ('KFC #1003', '789 Walnut St', 'Largerville', 'VA', 'USA', '555-555-9876'),
  ('KFC #1004', '101 Cedar St', 'Westville', 'GA', 'USA', '555-555-5555'),
  ('KFC #1005', '121 Spruce St', 'Eastville', 'FL', 'USA', '555-555-5556'),
  ('KFC #1006', '141 Pine St', 'Bigville', 'TX', 'USA', '555-555-5557'),
  ('KFC #1007', '161 Maple St', 'Anyville', 'CA', 'USA', '555-555-6548')

SELECT *
FROM store

--Table for the emplyees 

CREATE TABLE employee (
  employee_id INT PRIMARY KEY IDENTITY (1,1),
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  email VARCHAR(255),
  phone VARCHAR(255),
  hire_date DATE,
  position VARCHAR(50),
  salary DECIMAL(10,2),
  store_id INT,
  FOREIGN KEY (store_id) REFERENCES store(store_id)
);

-- Store 1
INSERT INTO employee (first_name, last_name, email, phone, hire_date, position, salary, store_id)
VALUES
	('John', 'Smith', 'john.smith@example.com', '555-1234', '2020-01-01','Manager', 120000.00, 1),
	('Jane', 'Doe', 'jane.doe@example.com', '555-5678', '2020-02-01', 'Cook',45000.00, 1),
	('Bob', 'Johnson', 'bob.johnson@example.com', '555-9876', '2020-03-01','Cashier',55000.00, 1),
	('Alice', 'Williams', 'alice.williams@example.com', '555-5432', '2020-04-01','Member', 60000.00, 1),
	('Mike', 'Brown', 'mike.brown@example.com', '555-4321', '2020-05-01','Member', 52000.00, 1)

-- Store 2
INSERT INTO employee (first_name, last_name, email, phone, hire_date, position, salary, store_id)
VALUES
	('Samantha', 'Taylor', 'samantha.taylor@example.com', '555-1357', '2020-01-01','Manager', 120000.00, 2),
	('David', 'Jackson', 'david.jackson@example.com', '555-2468', '2020-02-01','Cook', 52000.00, 2),
	('Karen', 'White', 'karen.white@example.com', '555-3691', '2020-03-01','Cashier', 50000.00, 2),
	('Peter', 'Lee', 'peter.lee@example.com', '555-7890', '2020-04-01','Member',55000.00, 2),
	('Megan', 'Davis', 'megan.davis@example.com', '555-9012', '2020-05-01','Member', 47000.00, 2)

-- Store 3
INSERT INTO employee (first_name, last_name, email, phone, hire_date, position, salary, store_id)
VALUES
	('Jason', 'Kim', 'jason.kim@example.com', '555-2345', '2020-01-01','Manager', 120000.00, 3),
	('Amy', 'Nguyen', 'amy.nguyen@example.com', '555-6789', '2020-02-01','Cook', 49000.00, 3),
	('Kevin', 'Chen', 'kevin.chen@example.com', '555-8765', '2020-03-01','Cashier', 53000.00, 3),
	('Jessica', 'Garcia', 'jessica.garcia@example.com', '555-4321', '2020-04-01','Member',58000.00, 3),
	('Daniel', 'Jones', 'daniel.jones@example.com', '555-3210', '2020-05-01','Member', 51000.00, 3)

-- Store 4
INSERT INTO employee (first_name, last_name, email, phone, hire_date, position, salary, store_id)
VALUES
	('Jason', 'Lee', 'jason.kim@example.com', '555-2345', '2020-01-01','Manager', 120000.00, 4),
	('Ani', 'Ilivan', 'amy.nguyen@example.com', '555-6789', '2020-02-01','Cook', 49000.00, 4),
	('Mako', 'Chen', 'kevin.chen@example.com', '555-8765', '2020-03-01','Cashier', 53000.00, 4),
	('Ted', 'Garcia', 'jessica.garcia@example.com', '555-4321', '2020-04-01','Member',58000.00, 4),
	('Daniel', 'Brown', 'daniel.jones@example.com', '555-3210', '2020-05-01','Member', 51000.00, 4)

-- Store 5
INSERT INTO employee (first_name, last_name, email, phone, hire_date, position, salary, store_id)
VALUES
	('Michael', 'Smith', 'michael.smith@gmail.com', '123-456-7890', '2021-01-01','Manager', 120000.00, 5),
	('Jessica', 'Johnson', 'jessica.johnson@hotmail.com', '456-789-1234', '2021-02-01','Cook', 55000.00, 5),
	('Matthew', 'Williams', 'matthew.williams@yahoo.com', '789-123-4567', '2021-03-01','Cashier', 60000.00, 5),
	('Jennifer', 'Brown', 'jennifer.brown@gmail.com', '123-456-7890', '2021-01-01','Member', 50000.00, 5),
	('William', 'Davis', 'william.davis@hotmail.com', '456-789-1234', '2021-02-01','Member', 55000.00, 5)

-- Store 6
INSERT INTO employee (first_name, last_name, email, phone, hire_date, position, salary, store_id)
VALUES
	('Emily', 'Miller', 'emily.miller@yahoo.com', '789-123-4567', '2021-03-01','Manager', 120000.00, 6),
	('David', 'Garcia', 'david.garcia@gmail.com', '123-456-7890', '2021-01-01','Cook', 50000.00, 6),
	('Emma', 'Martinez', 'emma.martinez@hotmail.com', '456-789-1234', '2021-02-01','Cashier', 55000.00, 6),
	('Christopher', 'Clark', 'christopher.clark@yahoo.com', '789-123-4567', '2021-03-01','Member', 60000.00, 6),
	('Ava', 'Hernandez', 'ava.hernandez@gmail.com', '123-456-7890', '2021-01-01','Member', 50000.00, 6)

-- Store 7
INSERT INTO employee (first_name, last_name, email, phone, hire_date, position, salary, store_id)
VALUES
	('Daniel', 'Taylor', 'daniel.taylor@hotmail.com', '456-789-1234', '2021-02-01','Manager', 120000.00, 7),
	('Isabella', 'Lee', 'isabella.lee@yahoo.com', '789-123-4567', '2021-03-01','Cook', 60000.00, 7),
	('Ethan', 'Johnson', 'ethan.johnson@gmail.com', '123-456-7890', '2021-01-01','Cashier', 50000.00, 7),
	('Olivia', 'Brown', 'olivia.brown@hotmail.com', '456-789-1234', '2021-02-01','Member', 55000.00, 7),
	('Sophia', 'Davis', 'sophia.davis@yahoo.com', '789-123-4567', '2021-03-01','Member', 60000.00, 7)

SELECT *
FROM employee

--Table for the clients

CREATE TABLE customer (
  customer_id INT PRIMARY KEY IDENTITY (1,1),
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  email VARCHAR(255),
  phone VARCHAR(255),
  address VARCHAR(255),
  city VARCHAR(255),
  state VARCHAR(255),
  country VARCHAR(255)
);


INSERT INTO customer (first_name, last_name, email, phone, address, city, state, country)
VALUES
  ('John', 'Doe', 'johndoe@gmail.com', '123-456-7890', '123 Main St', 'Anytown', 'CA', 'USA'),
  ('Jane', 'Smith', 'janesmith@yahoo.com', '555-123-4567', '456 High St', 'Sometown', 'NY', 'USA'),
  ('Bob', 'Johnson', 'bob.johnson@hotmail.com', '555-987-6543', '789 Elm St', 'Othertown', 'TX', 'USA'),
  ('Samantha', 'Lee', 'samlee@gmail.com', '555-555-1212', '1010 Oak St', 'Smalltown', 'WA', 'USA'),
  ('David', 'Brown', 'david.brown@gmail.com', '555-555-5555', '111 Maple St', 'Hometown', 'NC', 'USA'),
  ('Amanda', 'Wilson', 'amanda.wilson@yahoo.com', '555-555-1234', '234 Elm St', 'Newtown', 'PA', 'USA'),
  ('Michael', 'Davis', 'michael.davis@gmail.com', '555-321-6548', '567 Pine St', 'Bigtown', 'FL', 'USA'),
  ('Jennifer', 'Martinez', 'jennifer.martinez@hotmail.com', '555-555-9876', '890 Walnut St', 'Largetown', 'OH', 'USA'),
  ('Christopher', 'Garcia', 'christopher.garcia@gmail.com', '555-555-5556', '1212 Cedar St', 'Westtown', 'IL', 'USA'),
  ('Jessica', 'Hernandez', 'jessica.hernandez@yahoo.com', '555-555-5557', '1313 Spruce St', 'Easttown', 'CA', 'USA'),
  ('Michelle', 'Nguyen', 'michelle.nguyen@gmail.com', '555-555-1212', '1414 Oak St', 'Smallville', 'MA', 'USA'),
  ('William', 'Chen', 'william.chen@yahoo.com', '555-555-1234', '2727 Elm St', 'Newville', 'NJ', 'USA'),
  ('Elizabeth', 'Kim', 'elizabeth.kim@hotmail.com', '555-555-9876', '3838 Walnut St', 'Largerville', 'VA', 'USA'),
  ('Daniel', 'Gonzalez', 'daniel.gonzalez@gmail.com', '555-555-5555', '4949 Cedar St', 'Westville', 'GA', 'USA'),
  ('Megan', 'Liu', 'megan.liu@yahoo.com', '555-555-5556', '5050 Spruce St', 'Eastville', 'FL', 'USA'),
  ('Alexander', 'Martinez', 'alexander.martinez@gmail.com', '555-555-5557', '6161 Pine St', 'Bigville', 'TX', 'USA'),
  ('Isabella', 'Smith', 'isabella.smith@hotmail.com', '555-555-6548', '7272 Maple St', 'Anyville', 'CA', 'USA'),
  ('Ethan', 'Nguyen', 'ethan.nguyen@gmail.com', '555-555-7890', '8383 High St', 'Somesville', 'IL', 'USA'),
  ('Avery', 'Johnson', 'avery.johnson@yahoo.com', '555-555-4567', '9494 Elm St', 'Otherville', 'NY', 'USA'),
  ('Olivia', 'Garcia', 'olivia.garcia@gmail.com', '555-555-9876', '1050 Oak St', 'Anytown', 'TX', 'USA')

SELECT *
FROM customer

--Table for the orders

DROP TABLE orders
CREATE TABLE orders (
    order_id INT PRIMARY KEY IDENTITY,
    store_id INT,
    order_date DATETIME,
    total_price DECIMAL(8, 2),
	total_quantity INT,
    customer_id INT,
    FOREIGN KEY (store_id) REFERENCES store(store_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
)
 
INSERT INTO orders (store_id, order_date, total_price, total_quantity ,customer_id)
VALUES	(1,'2023-05-27 12:34:56',0,0,1),
		(2,'2023-05-26 10:20:30',0,0,3),
		(3,'2023-05-26 15:45:00',0,0,5),
		(4,'2023-06-25 11:30:00',0,0,18),
		(5,'2023-06-24 19:11:11',0,0,6),
		(6,'2023-06-24 14:22:33',0,0,17),
		(7,'2023-06-23 15:13:13',0,0,8),
		(1,'2023-07-22 16:16:16',0,0,14),
		(2,'2023-07-21 18:18:18',0,0,9),
		(3,'2023-07-20 09:00:00',0,0,10),
		(4,'2023-07-25 17:30:00',0,0,11),
		(5,'2023-05-24 16:11:11',0,0,16),
		(6,'2023-06-24 14:22:33',0,0,7),
		(7,'2023-05-23 18:13:13',0,0,20)
		

SELECT *
FROM orders

DELETE orders
DELETE FROM orders;
DBCC CHECKIDENT ('orders', RESEED, 0);

--Table for the type of food in the order

DROP TABLE order_items
CREATE TABLE order_items (
order_item_id INT PRIMARY KEY IDENTITY(1,1),
order_id INT,
menu_id INT,
quantity INT,
price DECIMAL(5, 2),
FOREIGN KEY (order_id) REFERENCES orders(order_id),
FOREIGN KEY (menu_id) REFERENCES menu(menu_id)
)

INSERT INTO order_items(order_id, menu_id, quantity, price)
VALUES  (1,4,2,(SELECT price FROM menu WHERE menu_id = 4)),
		(1,2,1,(SELECT price FROM menu WHERE menu_id = 2)),
		(1,3,1,(SELECT price FROM menu WHERE menu_id = 3)),
		(2,4,1,(SELECT price FROM menu WHERE menu_id = 4)),
		(2,5,1,(SELECT price FROM menu WHERE menu_id = 5)),
		(3,7,1,(SELECT price FROM menu WHERE menu_id = 7)),
		(3,6,1,(SELECT price FROM menu WHERE menu_id = 6)),
		(4,11,1,(SELECT price FROM menu WHERE menu_id = 11)),
		(4,9,1,(SELECT price FROM menu WHERE menu_id = 9)),
		(5,1,1,(SELECT price FROM menu WHERE menu_id = 1)),
		(5,8,1,(SELECT price FROM menu WHERE menu_id = 8)),
		(6,4,1,(SELECT price FROM menu WHERE menu_id = 4)),
		(6,14,1,(SELECT price FROM menu WHERE menu_id = 14)),
		(7,20,1,(SELECT price FROM menu WHERE menu_id = 20)),
		(7,18,1,(SELECT price FROM menu WHERE menu_id = 18)),
		(8,14,1,(SELECT price FROM menu WHERE menu_id = 14)),
		(8,15,1,(SELECT price FROM menu WHERE menu_id = 15)),
		(9,3,1,(SELECT price FROM menu WHERE menu_id = 3)),
		(9,18,1,(SELECT price FROM menu WHERE menu_id = 18)),
		(10,19,1,(SELECT price FROM menu WHERE menu_id = 19)),
		(10,20,1,(SELECT price FROM menu WHERE menu_id = 20)),
		(11,16,1,(SELECT price FROM menu WHERE menu_id = 16)),
		(11,7,1,(SELECT price FROM menu WHERE menu_id = 7)),
		(12,2,1,(SELECT price FROM menu WHERE menu_id = 2)),
		(12,11,1,(SELECT price FROM menu WHERE menu_id = 11)),
		(13,12,1,(SELECT price FROM menu WHERE menu_id = 12)),
		(13,13,1,(SELECT price FROM menu WHERE menu_id = 13)),
		(14,4,1,(SELECT price FROM menu WHERE menu_id = 4)),
		(14,6,1,(SELECT price FROM menu WHERE menu_id = 6))

INSERT INTO order_items(order_id, menu_id, quantity, price)
VALUES  (2,6,3,(SELECT price FROM menu WHERE menu_id = 6))
INSERT INTO order_items(order_id, menu_id, quantity, price)
VALUES  (14,6,10,(SELECT price FROM menu WHERE menu_id = 6))
INSERT INTO order_items(order_id, menu_id, quantity, price)
VALUES  (14,6,2,(SELECT price FROM menu WHERE menu_id = 6))

DELETE FROM order_items WHERE order_id = 14 and menu_id = 6


SELECT *
FROM order_items

DELETE order_items
GO

UPDATE orders
go

---Triger for the update on the orders

CREATE TRIGGER update_order_items
ON order_items
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    UPDATE orders
    SET total_quantity = (
            SELECT SUM(quantity)
            FROM order_items
            WHERE order_id = inserted.order_id
        ),
        total_price = (
            SELECT SUM(quantity * price)
            FROM order_items
            WHERE order_id = inserted.order_id
        )
    FROM orders
    INNER JOIN inserted ON orders.order_id = inserted.order_id;

    UPDATE orders
    SET total_quantity = (
            SELECT SUM(quantity)
            FROM order_items
            WHERE order_id = deleted.order_id
        ),
        total_price = (
            SELECT SUM(quantity * price)
            FROM order_items
            WHERE order_id = deleted.order_id
        )
    FROM orders
    INNER JOIN deleted ON orders.order_id = deleted.order_id;

    DECLARE @order_id INT;
    DECLARE @total_price DECIMAL(8, 2);

    SELECT @order_id = order_id, @total_price = total_price
    FROM orders
    WHERE order_id IN (SELECT order_id FROM inserted);

    IF @total_price > 30
    BEGIN
        DECLARE @promo_code NVARCHAR(10);
        SET @promo_code = 'DISCOUNT10';

        PRINT 'Promo code ' + @promo_code + ' has been sent to the customer of order ID ' + CAST(@order_id AS NVARCHAR);
    END
END


Drop Trigger  update_order_items

---View for the custumers that are from New York City

CREATE VIEW example_customers AS
SELECT customer_id, first_name, state,email
FROM customer
WHERE state = 'NY'
GO

SELECT *
FROM example_customers

DROP VIEW example_customers

---Counting the employees in the different restaurants

SELECT COUNT(*) as total_employees, e.store_id, s.store_name
FROM employee e
JOIN store s ON e.store_id = s.store_id
GROUP BY e.store_id, s.store_name

---All of the employees that are hired after 2021-02-01

SELECT first_name,hire_date,store_name
FROM store,employee
WHERE hire_date >= '2021-02-01'
AND store.store_id = employee.store_id 

---Showing the restaurants that are located in Texas with Yes and No answer

SELECT store_name, address, city, state, country,
  CASE WHEN state = 'TX' THEN 'Yes' ELSE 'No' END AS located_in_usa
FROM store;

---The avarage salary for the employees in the different restaurants

SELECT store_id, CONCAT('$', FORMAT(AVG(salary), 'N2')) AS avg_salary
FROM employee
GROUP BY store_id;

-------------------------------------------------------------------------------

SELECT menu_item, CONCAT('$', FORMAT(price, 'N2')) AS price,
  CASE WHEN category = 'Sandwiches' THEN 'Yes' ELSE 'No' END AS is_sandwich
FROM menu
WHERE price > 5;

---The total revenue for the month

SELECT 
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name, 
    SUM(CASE 
        WHEN MONTH(o.order_date) = 5 THEN o.total_price
        WHEN MONTH(o.order_date) = 6 THEN o.total_price 
        WHEN MONTH(o.order_date) = 7 THEN o.total_price
        ELSE 0 
    END) AS revenue_last_quarter
FROM 
    orders o 
    INNER JOIN customer c ON o.customer_id = c.customer_id 
WHERE 
    o.order_date >= DATEADD(MONTH, -1, GETDATE())
GROUP BY 
    c.customer_id, c.first_name, c.last_name
ORDER BY 
    revenue_last_quarter DESC;

---Showing all the snaks in the menu

CREATE PROCEDURE sp_GetMenuItemsByCategory
    @category CHAR(30)
AS
BEGIN
    SELECT menu_item, price
    FROM menu
    WHERE category = @category
END

EXEC sp_GetMenuItemsByCategory 'Snacks'


