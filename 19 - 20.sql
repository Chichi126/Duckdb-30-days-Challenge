SELECT *
from main.Titanic_dataset;


-- a)identify unique titles in the dataset
SELECT 	distinct
	case
		when Name like '%Mr.%' then 'Mr.'
		when Name like '%Mrs.%' then 'Mrs.'
		when Name like '%Miss.%' then 'Miss.'
		when Name like '%Master%' then 'Master.'
		else 'others'
	end as Title
from main.Titanic_dataset; 

-- b)consolidate infrequent titles into broader categories (e.g Mr, Mrs, Master, Miss)
SELECT Name ,   
	CASE
		WHEN  Name LIKE'%Master%' THEN 'Master.'
		WHEN  Name LIKE '%Miss%' OR Name LIKE '%Ms.%' THEN 'Miss'
		WHEN Name LIKE '%Mr.%' OR Name LIKE '%Don%' OR Name LIKE '%Rev.%' OR Name LIKE '%Major%' OR Name LIKE '%Sir%' OR Name LIKE '%Col%' OR Name LIKE '%Capt%' OR Name LIKE '%Jonkheer%' THEN 'Mr.'
		WHEN Name LIKE '%Mrs.%' OR Name LIKE '%Dr.%' OR Name LIKE '%Lady%' OR Name LIKE '%Countess.%'
		OR Name LIKE '%Mme.%' OR Name LIKE '%Dona.%' OR Name LIKE '%Mlle%' AND Sex = 'female' THEN 'Mrs.'
	ELSE NULL 
	END Title	
FROM main.Titanic_dataset;

	
-- c) Calculate and analyze survival rate for each title grouping
WITH Title_group AS (SELECT *,
	CASE
		WHEN  Name LIKE'%Master%' THEN 'Master.'
		WHEN  Name LIKE '%Miss%' OR Name LIKE '%Ms.%' THEN 'Miss'
		WHEN Name LIKE '%Mr.%' OR Name LIKE '%Don%' OR Name LIKE '%Rev.%' OR Name LIKE '%Major%' 
		OR Name LIKE '%Sir%' OR Name LIKE '%Col%' OR Name LIKE '%Capt%' OR Name LIKE '%Jonkheer%' THEN 'Mr.'
		WHEN Name LIKE '%Mrs.%' OR Name LIKE '%Dr.%' OR Name LIKE '%Lady%' OR Name LIKE '%Countess.%'
		OR Name LIKE '%Mme.%' OR Name LIKE '%Dona.%' OR Name LIKE '%Mlle%' AND Sex = 'female' THEN 'Mrs.'
		ELSE NULL 
	END AS Title
FROM main.Titanic_dataset 
							)
SELECT 	Title, COUNT(*) TotalPassenger,
		SUM(Survived) AS SurvivalCount, 
		ROUND(AVG(Survived),2) AS SurvivalRate,
FROM Title_group
GROUP BY Title
ORDER BY SUM(Survived) DESC; 


-- Question 2 Calculate the survival rate based on child and woman

WITH woman_child AS (
			SELECT *,
					CASE 
					WHEN Sex = 'female' AND AGE < 18 THEN 'Child' 
					WHEN Sex = 'male'  AND Age < 18 THEN 'Child'
					WHEN Sex = 'female' AND  Age >= 18 THEN 'Woman'
					ELSE 'Adult men'
				END child_woman
				FROM  main.Titanic_dataset 
				)
SELECT child_woman, COUNT(*) TotalPassenger, 
	SUM(Survived) SurvivalCount, 
	ROUND(AVG(Survived),2) Survival_Rate
FROM woman_child
GROUP BY child_woman
ORDER BY survival_Rate DESC;



		
