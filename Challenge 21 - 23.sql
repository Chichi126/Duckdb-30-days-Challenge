SELECT *
FROM main.Titanic_dataset 

-- Task 1: Survival based on Cabin Level
WITH PassengerCabin AS (
    SELECT 
        Ticket,
        MAX(SUBSTR(Cabin, 1, 1)) AS CabinLevel,
        COUNT(*) AS TotalPassengers,
        SUM(Survived) AS SurvivedCount
    FROM Titanic_dataset
    GROUP BY Ticket
)

SELECT 
    CabinLevel,
    SUM(TotalPassengers) AS TotalPassengers,
    SUM(SurvivedCount) AS SurvivedCount,
    ROUND(SUM(SurvivedCount) * 100.0 / SUM(TotalPassengers), 2) AS SurvivalRate
FROM PassengerCabin
GROUP BY CabinLevel
ORDER BY CabinLevel;

--Task 2: Solo travelers if the individual is the only passenger attached to a ticket.
WITH PassengerGroups AS (
    SELECT 
       Ticket, 
       SUBSTRING(Name FROM 1 FOR POSITION(',' IN Name) - 1) AS Surname,
        COUNT(*) AS GroupSize
    FROM Titanic_dataset
    GROUP BY Ticket, Surname
)

SELECT 
    CASE
        WHEN GroupSize = 1 THEN 'Solo traveler'
        WHEN GroupSize > 1 AND COUNT(*) = 1 THEN 'Family traveler'
        ELSE 'Mixed group'
    END AS PassengerType,
    COUNT(*) AS TotalPassengers
FROM PassengerGroups
GROUP BY GroupSize;


---Task 3: Family Size Calculation
WITH FamilySize AS (
    SELECT 
        Ticket,
       SUBSTRING(Name FROM 1 FOR POSITION(',' IN Name) - 1) AS Surname,
        MAX(SibSp + ParCh + 1) AS CalculatedFamilySize
    FROM Titanic_dataset
    GROUP BY Ticket, Surname
)

SELECT 
    t.PassengerId,
    t.Name,
    COALESCE(f.CalculatedFamilySize, 1) AS FamilySize
FROM Titanic_dataset t
LEFT JOIN FamilySize f ON t.Ticket = f.Ticket AND SUBSTRING(Name FROM 1 FOR POSITION(',' IN Name) - 1) = f.Surname
ORDER BY FamilySize DESC;

