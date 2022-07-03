# Write your MySQL query statement below
SELECT MAX(sb.num) as num
FROM

    (
    SELECT num,count(num)
    FROM MyNumbers
    GROUP BY num
    Having count(num) = 1
    ) sb