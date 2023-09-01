-- https://leetcode.com/problems/combine-two-tables/


-- Since we need to return columns from two different tables so first we need to perform a join

SELECT p.firstName,p.lastName,a.city,a.state
FROM Person p
LEFT JOIN Address a
ON p.personId = a.personId