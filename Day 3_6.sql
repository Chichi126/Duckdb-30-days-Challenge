
-- to create a new column that will house the converted weight
ALTER TABLE Fifa_21_raw1
ADD COLUMN weight_Int INT;

--to convert the value 
UPDATE Fifa_21_raw1
SET Weight_Int = LEFT(Weight,3);

--TO transform my data i will need to delete the previous height column
ALTER TABLE fifa_21_raw1
DROP COLUMN Weight;

--To rename the newly created column to the previous column name
ALTER TABLE fifa_21_raw1
RENAME COLUMN Weight_Int TO Weight

--to change the Height column to INT data type adding a new column named weight_int that will house the converted Height values
ALTER TABLE fifa_21_raw1
ADD COLUMN Height_Int INT;

--to convert the value we want to convert
UPDATE fifa_21_raw1
SET Height_Int = LEFT(Height,1);

--TO transform my data i will need to delete the previous height column
ALTER TABLE fifa_21_raw1
DROP COLUMN Height;

--to rename the height_int to the main name Height
ALTER TABLE fifa_21_raw1
RENAME COLUMN Height_Int TO Height

--To convert the SM, WF IR columns
ALTER TABLE fifa_21_raw1
ADD COLUMN SM_Int INT;

--To extract the value that we want from SM column
UPDATE fifa_21_raw1
SET SM_Int = LEFT(SM,1);

--TO transform my data i will need to delete the previous SM column
ALTER TABLE fifa_21_raw1 
DROP COLUMN SM;

-- to rename the column to its original name
ALTER TABLE fifa_21_raw1 
RENAME COLUMN SM_Int TO SM

--To remove the Star symbol and also covert the values in column "W/F" and IR to integer
UPDATE main.fifa_21_raw1
SET IR = CAST(REPLACE(REPLACE(IR, '*', ''), '★', '') AS INT),
    "W/F"  = CAST(REPLACE(REPLACE("W/F" , '*', ''), '★', '') AS INT);
   
-- To convert the IR and W/F to an Int
ALTER TABLE main.Fifa_21_raw1 
ALTER COLUMN IR TYPE INT;
ALTER TABLE main.Fifa_21_raw1 
ALTER COLUMN "W/F" TYPE INT;
   
-- To remove the Euro sign and as well the K and M in Value
UPDATE main.Fifa_21_raw1 
SET Value = 
  CASE
    WHEN Value LIKE '€%K' THEN CAST(REPLACE(REPLACE(Value, '€', ''), 'K', '') AS INT) * 1000
    WHEN Value LIKE '€%M' THEN CAST(REPLACE(REPLACE(Value, '€', ''), 'M', '') AS INT) * 1000000
    ELSE CAST(REPLACE(Value, '€', '') AS INT)
  END;
 
--To convert the column to Decimal
ALTER TABLE main.Fifa_21_raw1 
ALTER COLUMN "Value" TYPE DECIMAL;
 
 -- To remove the Euro sign and as well the K and M in Wages
UPDATE main.Fifa_21_raw1  
SET Wage = 
  CASE
    WHEN Wage LIKE '€%K' THEN CAST(REPLACE(REPLACE(Wage, '€', ''), 'K', '') AS DECIMAL(10, 2)) * 1000
    WHEN Wage LIKE '€%M' THEN CAST(REPLACE(REPLACE(Wage, '€', ''), 'M', '') AS DECIMAL(10, 2)) * 1000000
    ELSE CAST(REPLACE(Wage, '€', '') AS DECIMAL(10, 2))
  END;

  --To convert the column to DECIMAL
ALTER TABLE main.Fifa_21_raw1 
ALTER COLUMN "Wage" TYPE DECIMAL;
 
  -- To remove the Euro sign and as well the K and M in Release Clause
UPDATE main.Fifa_21_raw1 
SET "Release Clause"  = 
  CASE
    WHEN "Release Clause"  LIKE '€%K' THEN CAST(REPLACE(REPLACE("Release Clause"  , '€', ''), 'K', '') 
    AS DECIMAL(10, 2)) * 1000
    WHEN "Release Clause"  LIKE '€%M' THEN CAST(REPLACE(REPLACE("Release Clause"  , '€', ''), 'M', '') 
    AS DECIMAL(10, 2)) * 1000000
    ELSE CAST(REPLACE("Release Clause"  , '€', '') AS DECIMAL(10, 2))
  END;
 
 ---To change the datatype
ALTER TABLE main.Fifa_21_raw1 
ALTER COLUMN "Release Clause" TYPE DECIMAL;

--To change the datatype of Hits Column
UPDATE main.Fifa_21_raw1
SET "Hits" = CAST(REPLACE("Hits", 'K', '') AS DECIMAL) * 1000
WHERE "Hits" LIKE '%K';

ALTER TABLE main.Fifa_21_raw1 
ALTER COLUMN "Hits" TYPE INT;

 -- To check the datatype of the columns   
SELECT COLUMN_NAME, DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Fifa_21_raw1';