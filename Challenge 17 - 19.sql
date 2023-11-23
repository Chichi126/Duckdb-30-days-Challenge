--- Importing and creating of test table
SELECT * From read_csv_auto(["C:\Users\CHICHI\Desktop\Titanics\test.csv"]);
CREATE Table test as select *
From read_csv_auto(["C:\Users\CHICHI\Desktop\Titanics\test.csv"]);
SELECT *
FROM main.test 

-- Importing and creating of gender table
SELECT * From read_csv_auto(["C:\Users\CHICHI\Desktop\Titanics\gender_submission.csv"]);
CREATE Table gender_submission as select *
from read_csv_auto(["C:\Users\CHICHI\Desktop\Titanics\gender_submission.csv"]);
SELECT *
FROM main.gender_submission 

--Importing of train table
SELECT * From read_csv_auto(["C:\Users\CHICHI\Desktop\Titanics\train.csv"]);
CREATE Table train as select *
from read_csv_auto(["C:\Users\CHICHI\Desktop\Titanics\train.csv"]);
SELECT *
FROM main.train 


-- creating of another table joining both the train and test table

CREATE TABLE Titanic_dataset AS
    SELECT *
    FROM main.train 
    Union all
    Select *
    from main.test;
   
   SELECT *
   FROM titanic_dataset
   
--1)
WITH fare_buckets AS (
    SELECT *,
           NTILE(6) OVER (ORDER BY Fare) AS fare_bin
    FROM Titanic_dataset)
    
	SELECT
       COUNT(*) AS Total_passengers,
       SUM(Survived) AS Total_survivors,
       Round(AVG(Survived),2) AS Survival_rate,
       Max(Fare) AS HighestFare,
       Min(Fare) AS LowestFare,
       sum(Fare) AS TotalFare,
       fare_bin
FROM fare_buckets
GROUP BY fare_bin
ORDER BY fare_bin

-- To calculate the correlation

SELECT 
	CORR (fare, Survived) 
FROM main.Titanic_dataset 

-- there is an indication of a moderate positive relationship between the variables

--- to identify inconsistency or noise, basically to filter where fare is NULL or negative
SELECT *
FROM Titanic_dataset
WHERE Fare IS NULL OR Fare < 0; 



-- Q2) 

SELECT
    sex,
    COUNT(*) AS total_passengers,
    SUM(survived) AS total_survivors,
    Round((SUM(survived) * 100.0 / COUNT(*)),2) AS survival_percentage,
    Round(100 - (SUM(survived) * 100.0 / COUNT(*)),2) AS Nonsurvival_percentage
FROM (
    SELECT
        sex,
        survived
    FROM Titanic_dataset
) AS subquery
GROUP BY sex;

--Q3)

SELECT 
	CASE 
		WHEN Age <= 20 then 'Below 20'
		WHEN Age BETWEEN 20 AND 40 THEN '20 - 40'
		WHEN Age BETWEEN 41 AND 60 THEN '40 - 60'
		WHEN Age BETWEEN  61 AND 80 THEN '60 - 80'
		ELSE 'Over 80'
		END AS Age_group,
	COUNT(*) AS Total_Passenger,
	SUM(survived)AS TotalSurvivals,
	ROUND(SUM(survived)/COUNT(*)*100,2)AS survival_rate
FROM titanic_dataset
GROUP BY Age_group
ORDER BY MIN(Age) ASC;
	





   
  

