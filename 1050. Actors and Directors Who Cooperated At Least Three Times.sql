-- https://leetcode.com/problems/actors-and-directors-who-cooperated-at-least-three-times/



SELECT actor_id,director_id
FROM ActorDirector ad
GROUP BY ad.actor_id,ad.director_id
HAVING COUNT(timestamp)>=3
