-- What was the survival rate of males in the third passenger class

SELECT 
    SUM(CASE 
	    WHEN Sex = 'male' AND Pclass = 3 THEN Survived 
    	ELSE 0 END) AS MaleSurvived,
    COUNT(CASE 
	    WHEN Sex = 'male' AND Pclass = 3 THEN 1 END) AS MaleTotal,
    ROUND((SUM(CASE WHEN Sex = 'male' AND Pclass = 3 THEN Survived 
    	ELSE 0 END) * 100.0) / COUNT(CASE 
	    WHEN Sex = 'male' AND Pclass = 3 THEN 1 
    END), 2) AS SurvivalRate
FROM 
    Titanic_dataset;
   

  -- What is the percentage survived between Sex, Embarked, and PClass with the given conditions
   SELECT
    Sex,
    Embarked,
    Pclass,
    COUNT(*) AS TotalPassengers,
    SUM(Survived) AS SurvivedCount,
    ROUND((SUM(Survived) * 100.0) / COUNT(*), 2) AS SurvivalRate
FROM
    Titanic_dataset
GROUP BY
    Sex,
    Embarked,
    Pclass
  ORDER BY SurvivalRate DESC;
 
  -- using the example given
   SELECT
    SUM(Survived) AS TotalSurvived,
    COUNT(*) AS TotalPassengers,
    ROUND((SUM(Survived) * 100.0) / COUNT(*), 2) AS SurvivalRate
FROM
    Titanic_dataset
WHERE
    Sex = 'male'
    AND Age = 36
    AND Pclass = 2
    AND Embarked = 'C';

