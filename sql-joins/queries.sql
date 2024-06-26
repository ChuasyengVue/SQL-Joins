-- write your queries here

-- Part One: Getting Started:

-- 1. joins_exercise=# SELECT * FROM owners FULL JOIN vehicles ON owners.id = vehicles.owner_id;

-- 2. joins_exercise=# SELECT first_name, last_name, COUNT(vehicles) as count FROM owners INNER JOIN vehicles ON owners.id = vehicles.owner_id GROUP
-- BY owners.first_name, owners.last_name, owners.id ORDER BY owners.first_name ASC;

-- 3. joins_exercise=# SELECT first_name, last_name, CAST(AVG(price) AS NUMERIC(10,0)) AS average_price , COUNT(vehicles) AS count FROM owners 
-- INNER JOIN vehicles ON owners.id = vehicles.owner_id GROUP BY owners.first_name, owners.last_name, owners.id HAVING COUNT(vehicles) > 1 AND AVG(price) > 10000 
-- ORDER BY owners.first_name DESC;


-- Part Two: SQL Zoo:

-- Tutorial 6: Join:

-- 1. SELECT matchid, player 
-- FROM goal 
-- WHERE teamid = 'GER';

-- 2. SELECT id,stadium,team1,team2
-- FROM game
-- WHERE id = 1012;

-- 3. SELECT player, teamid, stadium, mdate
-- FROM game JOIN goal ON (id=matchid)
-- WHERE teamid = 'GER';

-- 4. SELECT team1, team2, player FROM game JOIN goal ON (id = matchid)
-- WHERE player LIKE 'Mario%';

-- 5. SELECT player, teamid, coach, gtime
-- FROM goal JOIN eteam ON id = teamid
-- WHERE gtime<=10

-- 6. SELECT mdate, teamname FROM game JOIN eteam ON (team1=eteam.id) WHERE coach = 'Fernando Santos';

-- 7. SELECT player FROM goal JOIN game ON (id = matchid) WHERE stadium = 'National Stadium, Warsaw';

-- 8. SELECT DISTINCT(player)
-- FROM goal JOIN game ON id = matchid
-- WHERE teamid != 'GER' AND (team1 = 'GER'OR team2 = 'GER');

-- 9. SELECT teamname, COUNT(teamid)
-- FROM eteam JOIN goal ON id=teamid
-- GROUP BY teamname

-- 10. SELECT DISTINCT(stadium), COUNT(*)
-- FROM game join goal ON id = matchid
-- GROUP BY stadium
-- HAVING COUNT(*)

-- 11. SELECT matchid,mdate, COUNT(teamid)
-- FROM game JOIN goal ON matchid = id 
-- WHERE (team1 = 'POL' OR team2 = 'POL')
-- GROUP BY matchid
-- HAVING COUNT(teamid)

-- 12. SELECT  matchid, mdate, COUNT(teamid)
-- FROM goal JOIN game ON (id = matchid)
-- WHERE teamid = 'GER'
-- GROUP BY matchid,mdate

-- 13. SELECT
--  mdate,
--   team1,
--  SUM(CASE WHEN teamid=team1 THEN 1 ELSE 0 END ) score1,

--   team2,
--  SUM(CASE WHEN teamid=team2 THEN 1 ELSE 0 END ) score2

--  FROM game JOIN goal ON id=matchid
-- GROUP BY mdate,team1,team2
-- ORDER BY mdate, matchid, team1, team2

