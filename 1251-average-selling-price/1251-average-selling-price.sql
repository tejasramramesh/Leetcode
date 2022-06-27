# Write your MySQL query statement below
SELECT DISTINCT product_id,ROUND(SUM(total_price)/SUM(units),2) as average_price
FROM

(SELECT P.product_id as product_id, P.price * us.units as total_price,us.units as units
FROM Prices P inner join UnitsSold us 
    ON (P.product_id = us.product_id 
        and us.purchase_date between P.start_date and P.end_date)
) asSB
GROUP BY product_id
