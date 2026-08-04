SELECT s.student_name,
       AVG(e.grade) AS average_grade
FROM students s
JOIN enrollments e
ON s.student_id = e.student_id
GROUP BY s.student_id, s.student_name
ORDER BY average_grade DESC
LIMIT 1;
SELECT c.course_name,
       AVG(e.grade) AS average_grade
FROM courses c
JOIN enrollments e
ON c.course_id = e.course_id
GROUP BY c.course_id, c.course_name
ORDER BY average_grade DESC;
SELECT s.student_name,
       e.grade
FROM students s
JOIN enrollments e
ON s.student_id = e.student_id
WHERE e.grade >
(
    SELECT AVG(grade)
    FROM enrollments
)
ORDER BY e.grade DESC;