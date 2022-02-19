-- Write an SQL query to report all customers who never order anything.


SELECT
name AS Customers
FROM Customers
WHERE id NOT IN 
(SELECT
  customerId
  FROM Orders);