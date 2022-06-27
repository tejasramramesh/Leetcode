# Write your MySQL query statement below
SELECT LEFT(trans_date,7) as month
, country
, COUNT(state) as trans_count
, SUM(state = 'approved') as approved_count
, SUM(amount) as trans_total_amount 
, SUM(case when state = 'approved' then amount else 0 end) as          approved_total_amount
FROM Transactions
GROUP BY month,country