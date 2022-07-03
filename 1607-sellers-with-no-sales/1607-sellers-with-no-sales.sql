# Write your MySQL query statement below
SELECT seller_name
FROM seller
WHERE seller_id not in (
    SELECT seller_id
    FROM Orders
    WHERE LEFT(sale_date,4) = '2020'
)
ORDER BY 1
