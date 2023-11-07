
--to import the first dataset
SELECT * FROM read_csv_auto(["C:\Users\CHICHI\Desktop\Fifa\fifa21_raw_data.csv"]);
CREATE TABLE Fifa_21_raw1 AS SELECT * 
FROM read_csv_auto(["C:\Users\CHICHI\Desktop\Fifa\fifa21_raw_data.csv"]);

-- To import the second datyaset
SELECT * FROM read_csv_auto(["C:\Users\CHICHI\Desktop\Fifa\fifa21 raw data v2.csv"]);
CREATE TABLE Fifa_21_raw2 AS SELECT * 
FROM read_csv_auto(["C:\Users\CHICHI\Desktop\Fifa\fifa21 raw data v2.csv"]);