# Write your MySQL query statement below

                     
                     


SELECT sp.name
FROM SalesPerson sp 
Where sp.sales_id NOT IN ( SELECT s.sales_id
                      FROM SalesPerson s INNER JOIN Orders o 
                        ON ( s.sales_id = o.sales_id )
                        INNER JOIN Company c 
                        ON ( c.com_id = o.com_id )
                       WHERE c.name = "RED"
                     )
                     