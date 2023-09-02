-- https://leetcode.com/problems/biggest-single-number/




WITH cte AS
(SELECT num
FROM MyNumbers 
GROUP BY num
HAVING COUNT(num)=1)

SELECT CASE WHEN COUNT(*)>0 THEN MAX(num) ELSE null END AS num
FROM cte