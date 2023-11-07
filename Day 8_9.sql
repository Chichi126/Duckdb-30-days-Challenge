--Task 3
--DAY 8 & 9
--Q1 Find the player with highest OVA and POT within each club 
WITH RankedPlayers AS (
    SELECT f2.club,f1.POT, f2.Name, f1."↓OVA" AS HighestOVA,
    ROW_NUMBER  () OVER (PARTITION BY f2.Club ORDER BY f1."↓OVA" DESC) AS RowNum
    FROM main.Fifa_21_raw2 f2
    JOIN main.Fifa_21_raw1 f1
    USING (ID)
)
SELECT club, Name, POT,HighestOVA, RowNum
FROM RankedPlayers
WHERE RowNum = 1;

--Q2 calculate the average OVA for players under 25 years old and over 30 years old in each club, 
--and round it to 2 decimal
SELECT Club,
       ROUND(AVG(CASE WHEN CAST(Age AS INT) < 25 THEN "↓OVA" ELSE NULL END),2) AS AvgOVA_Under25,
       ROUND(AVG(CASE WHEN CAST(Age AS INT) > 30 THEN "↓OVA" ELSE NULL END),2) AS AvgOVA_Over30
FROM main.Fifa_21_raw2  
GROUP BY Club;
---
SELECT Club, 
       AVG("↓OVA") AS AverageOVA
FROM main.fifa_21_raw2
WHERE CAST(Age AS INT) < 25 OR CAST(Age AS INT) > 30
GROUP BY Club;

--Q3 List the player who have the same age within each club
SELECT f2.Club, f1.Age, GROUP_CONCAT(f1.Name) AS PlayersWithSameAge
FROM main.Fifa_21_raw1 f1
JOIN main.Fifa_21_raw2 f2
USING (ID)
GROUP BY f2.Club, f1.Age
HAVING COUNT(*) > 1;

--4 FIND THE PLAYER WITH THE HIGHEST POT FOR EACH NATIONALITY
SELECT "Name", Nationality, POT
FROM (
  SELECT "Name", Nationality, POT, 
  RANK() OVER (PARTITION BY Nationality ORDER BY POT DESC) AS player_Rank
  FROM main.Fifa_21_raw2 
) AS RankedPlayer
WHERE player_Rank = 1
ORDER BY POT DESC;


--5. RANK PLAYERS BY THEIR OVA IN DESCENDING ORDER WITHIN CLUB
SELECT Club,"↓OVA", LongName , 
DENSE_RANK () OVER (PARTITION BY Club ORDER BY "↓OVA") AS Player_Rank
FROM main.Fifa_21_raw2 
ORDER BY Club, Player_Rank DESC;