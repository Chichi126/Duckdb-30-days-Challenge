--Task 2
		
---Q1 Identify players who possess high value but receive relatively low wages.
-- Used the average of both Value and Wage as a threshold 
SELECT LongName, Value, Wage
FROM main.Fifa_21_raw1 
WHERE Value > (SELECT AVG(Value) FROM main.Fifa_21_raw1)
    AND Wage < (SELECT AVG(Wage) FROM main.Fifa_21_raw1)
GROUP BY LongName, Value, Wage
ORDER BY Wage;

SELECT *
FROM main.Fifa_21_raw2 

-- Q2 Determine the count of players available in the dataset for each position
SELECT "Best_Position", COUNT(Name) AS PlayerCount
FROM main.Fifa_21_raw2  
GROUP BY "Best_Position"
ORDER BY 2 DESC ;


-- Q3 which club has the largest representation of players in the dataset
SELECT MAX(f2.Club), COUNT(f1.LongName) AS PlayerCount 
FROM main.Fifa_21_raw1  AS f1
JOIN main.Fifa_21_raw2  AS f2
USING (ID);

--Q4 List the top 10 players with the highest OVA and POT values
SELECT LongName, "↓OVA", "POT"
FROM main.Fifa_21_raw1  
ORDER BY "↓OVA" DESC , POT  
LIMIT 10;