# Write your MySQL query statement below

SELECT DISTINCT P.product_id
, ROUND((SUM(P.price * us.units)/ SUM(us.units)),2) as average_price
FROM Prices P LEFT JOIN UnitsSold us 
    ON (P.product_id = us.product_id
       and us.purchase_date between P.start_date and P.end_date)
GROUP BY P.product_id


