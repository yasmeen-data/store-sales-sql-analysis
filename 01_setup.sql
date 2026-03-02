-- Beginner SQL Sales Project
-- Creates Sales table 

CREATE TABLE sales (
    order_id INT,
    customer_name VARCHAR(50),
    city VARCHAR(50),
    order_date DATE,
    amount INT
);


INSERT INTO sales VALUES
(101, 'Asha', 'Mumbai', '2024-01-10', 500),
(102, 'Rahul', 'Delhi', '2024-01-12', 800),
(103, 'Asha', 'Mumbai', '2024-01-15', 300),
(104, 'Sana', 'Mumbai', '2024-01-18', 700),
(105, 'Karan', 'Hyderabad', '2024-01-20', 400),
(106, 'Riya', 'Delhi', '2024-01-25', NULL),
(107, 'Rahul', 'Delhi', '2024-02-02', 650),
(108, 'Asha', 'Mumbai', '2024-02-05', 900);  










