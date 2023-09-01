-- https://leetcode.com/problems/duplicate-emails/


SELECT p.email
FROM Person p
GROUP BY email
-- Since here we have to filter based on aggregator and not >,< so here using WHERE is not suitable . Thus use HAVING 
HAVING COUNT(DISTINCT id)>1