-- Average marks per student
SELECT s.id, s.name, AVG(m.marks) AS avg_marks
FROM students s
JOIN marks m ON s.id = m.student_id
GROUP BY s.id, s.name;

-- Top scoring student
SELECT s.name, SUM(m.marks) AS total_marks
FROM students s
JOIN marks m ON s.id = m.student_id
GROUP BY s.id, s.name
ORDER BY total_marks DESC
LIMIT 1;

-- Subject-wise average marks
SELECT sub.subject_name, AVG(m.marks) AS avg_marks
FROM subjects sub
JOIN marks m ON sub.subject_id = m.subject_id
GROUP BY sub.subject_name;

-- Students scoring below 75
SELECT s.name, m.marks
FROM students s
JOIN marks m ON s.id = m.student_id
WHERE m.marks < 75;

-- City-wise performance
SELECT s.city, AVG(m.marks) AS avg_marks
FROM students s
JOIN marks m ON s.id = m.student_id
GROUP BY s.city;
