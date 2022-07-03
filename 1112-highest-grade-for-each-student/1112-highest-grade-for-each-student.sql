# Write your MySQL query statement below
SELECT e.student_id,MIN(e.course_id) as course_id,sb.grade
FROM (
    SELECT student_id,Max(grade) as grade
    FROM Enrollments
    GROUP BY student_id
) sb INNER JOIN Enrollments e ON( sb.student_id = e.student_id and sb.grade = e.grade )
GROUP BY student_id
ORDER BY student_id ASC