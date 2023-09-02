-- https://leetcode.com/problems/shortest-distance-in-a-line/


SELECT MIN(ABS(p1.x - p2.x)) AS shortest
FROM Point p1
CROSS JOIN Point p2
-- Here since it is returning all possible combinations we dont need ON
WHERE p1.x <> p2.x 
