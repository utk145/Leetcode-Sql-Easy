-- https://leetcode.com/problems/employees-earning-more-than-their-managers/



SELECT e1.name AS Employee
FROM Employee e1
LEFT JOIN Employee e2
-- You cannot join a table to itself just by writing the name twice, you have to use alias
ON e1.managerId = e2.id
WHERE e1.salary > e2.salary