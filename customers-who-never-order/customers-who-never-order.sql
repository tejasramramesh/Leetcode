# Write your MySQL query statement below
SELECT c.name as Customers
FROM Customers c
WHERE c.id not IN ( SELECT o.customerId
                   FROM Orders o
);