-- ============================================================
-- Assignment Questions
-- ============================================================

-- Question 1: Retrieve Payment Information
-- Retrieve checkNumber, paymentDate, and amount from the payments table
SELECT checkNumber, paymentDate, amount
FROM payments;


-- Question 2: Find Orders in Process
-- Retrieve orderDate, requiredDate, status from orders
-- Only status = 'In Process', sorted by orderDate descending
SELECT orderDate, requiredDate, status
FROM orders
WHERE status = 'In Process'
ORDER BY orderDate DESC;


-- Question 3: Find Sales Representatives
-- Retrieve firstName, lastName, email from employees
-- Only jobTitle = 'Sales Rep', sorted by employeeNumber descending
SELECT firstName, lastName, email
FROM employees
WHERE jobTitle = 'Sales Rep'
ORDER BY employeeNumber DESC;


-- Question 4: Retrieve Office Information
-- Retrieve all columns and all records from offices
SELECT *
FROM offices;


-- Question 5: Retrieve the Five Cheapest Products
-- Retrieve productName, quantityInStock from products
-- Sorted by buyPrice ascending, limited to 5 records
SELECT productName, quantityInStock
FROM products
ORDER BY buyPrice ASC
LIMIT 5;
