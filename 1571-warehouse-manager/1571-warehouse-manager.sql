# Write your MySQL query statement below
SELECT DISTINCT W.name as warehouse_name
, (SUM(W.units * P.width * P.length * P.Height )) as volume
FROM Warehouse W  JOIN Products P
    ON ( W.product_id = P.product_id)
GROUP BY W.name