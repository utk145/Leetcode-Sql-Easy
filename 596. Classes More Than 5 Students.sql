-- https://leetcode.com/problems/classes-more-than-5-students/


SELECT class
FROM Courses c
GROUP BY class
HAVING COUNT(student)>=5
