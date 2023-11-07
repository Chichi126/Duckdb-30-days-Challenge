# FIFA-21

## 30 Days DuckDB Challenge On FIFA 21 Player Dataset Analysis "Unraveling the Magic of FIFA: A Data Analysis Journey"


![](https://github.com/Chichi126/ANALYZING-FIFA-21-/blob/main/fifagif.gif)

# Introduction

Welcome,

These datasets contain football (soccer) player information from the FIFA 21 game. They encompass details such as player names, nationalities, ages, positions, club affiliations, contract dates, and a wide array of performance metrics.

For this #30daysduckdbchallenge I will be working with two datasets, Fifa_21_raw1 and Fifa_21_raw2, both featuring identical column names. 
This challenge has been an extraordinary journey in the realm of data analysis. It has not only honed my SQL skills but has also showcased the capabilities of DuckDB in effectively managing real-world data challenges. Here is the link to the dataset

### Dataset Attributes

- **ID**: A unique identifier for each player.
- **Name**: The player's name.
- **LongName**: The player's full name.
- **photoUrl**: URL to the player's photo.
- **playerUrl**: URL to the player's profile.
- **Nationality**: The player's nationality.
- **Age**: The player's age.
- **OVA**: Overall rating.
- **POT**: Potential rating.
- **Club**: The player's current club.
- **Contract**: Contract details.
- **Positions**: The player's preferred positions.
- **Height**: The player's height.
- **Weight**: The player's weight.
- **Preferred Foot**: The player's preferred foot (left or right).
- **BOV**: Best overall position.
- **Best Position**: The player's best position.
- **Joined**: The date the player joined their current club.
- **Loan Date End**: The end date of any loan agreement.
- **Value**: The player's market value.
- **Wage**: The player's wage.
- **Release Clause**: The release clause value.
- Various attributes and ratings related to attacking, defending, skill, movement, and goalkeeping.

# Problem statement

- To identify Player's Performance and Potential

- Identify players with the highest Overall (OVA) and Potential (POT) ratings within each club.

- Analyze the distribution of players' preferred positions and footedness

- To identify Player's Attributes and Market Values



# Tools used

- Structured Querying Language (SQL) in the Dbeaver environment
- Power BI for visualization 


## DAY 1 CHALLENGE: SETTING UP MY WORKING ENVIRONMENT

- I Created an account with MotherDuck ![]( https://app.motherduck.com/?auth_flow=signup)

- I Installed DuckDB through the installation instructions and guide provided ![](https://duckdb.org/docs/installation.)

- And also to install Power BI for those that do not have it


## DAY 2 & 3 CHALLENGE: 

(a) I created a  DuckDB database named **TheChallenge**

(b) I imported the two datasets **fifa21_raw_data** and **fifa21_raw_data_v**

(c) I connected to the MotherDuck for collaboration and accessibility by my teams

*The link for the SQL codes is*![Here](https://github.com/Chichi126/FIFA-21/blob/main/Day%201_2%20challenge.sql)



![image](https://github.com/Chichi126/ANALYZING-FIFA-21-/assets/140970592/a8187a89-af6a-4544-baac-31cf5a5a3b42)


![image](https://github.com/Chichi126/ANALYZING-FIFA-21-/assets/140970592/b3306d0d-419f-4a0f-af0e-1156c715d938)



## Day 3 to 6 Challenge: Data Cleaning Process

#### Here are the tasks to be carried out
a) Converting Height and Weight to Numerical Form: For the 'Height' column, make sure to extract the numerical value (e.g., 6'0" becomes 6). For the 'Weight' column, remove the "lbs" and convert it to a numerical format.

b) Converting 'Value', 'Wage', and 'Release Clause' to Numbers:

c) The 'Value' column has values like '€100M' (which means 100 million) and '€10K' (which means 10,000). Strip the symbols ('€', 'M', 'K') and convert the values to actual numbers accordingly.

d) The 'Wage' column also uses 'K' (e.g., '€100K'), which should be converted to thousands.

e) The 'Release Clause' column follows the same pattern with 'M' and 'K'. Handling 'Star' Characters:

f) Remove the 'star' character from columns where it appears and make sure the columns are in numerical format.

i) Converted the 'Hits" column to an integer 

 ![Here is the SQL code for this analysis!](https://github.com/Chichi126/FIFA-21/blob/db66564650b209e6538e159dc96fbaa072faacfe/Day%203_6.sql)

![image](https://github.com/Chichi126/ANALYZING-FIFA-21-/assets/140970592/1d43939b-aa3b-4284-8aab-dbf4d1f23ed3)


## Day 7-9 Challenge: Querying the Datasets for insights

 #### Here are the tasks to be carried out
 
 - Identify players who possess high value but receive relatively low wages.
   
 - Determine the count of players available in the dataset for each position.

 - Find out which club has the largest representation of players in the dataset.

 - List the top 10 players with the highest OVA and POT values.

*Kindly follow the link to the SQL codes* ![](https://github.com/Chichi126/FIFA-21/blob/db66564650b209e6538e159dc96fbaa072faacfe/Day%207.sql)

## Day 8 and 9 challenge

#### Here below are the tasks performed 
- Find players with the highest OVA and POT within each club

- Calculate the average OVA for players under 25 years old and over 30 years old in each club

- List the players who are the same age within each club

- Find the player with the highest POT for each nationality

- Rank players by their OVA in descending order within each club

*Follow the link below to see the SQL codes used to achieve this analysis* ![](https://github.com/Chichi126/FIFA-21/blob/db66564650b209e6538e159dc96fbaa072faacfe/Day%208_9.sql)
  









