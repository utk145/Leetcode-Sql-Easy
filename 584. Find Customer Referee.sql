-- https://leetcode.com/problems/find-customer-referee/


SELECT  name
FROM Customer c
WHERE referee_id <> 2
OR referee_id IS NULL