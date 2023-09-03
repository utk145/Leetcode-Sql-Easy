-- https://leetcode.com/problems/not-boring-movies/




SELECT *
FROM CINEMA c
WHERE c.id%2 <> 0 AND c.description <> "boring"  
ORDER BY c.rating DESC