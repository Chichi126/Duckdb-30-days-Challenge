
## 30 Days DuckDB Challenge

## DAY 1 CHALLENGE: SETTING UP MY WORKING ENVIRONMENT

- I Created an account with MotherDuck ![MOTHERDUCK GUIDE](https://app.motherduck.com/?auth_flow=signup)

- I Installed DuckDB through the installation instructions and guide provided ![DUCKDB GUIDE](https://duckdb.org/docs/guides/sql_editors/dbeaver.html)

- Installed Power BI on my computer and configured it [POWER BI](https://powerbi.microsoft.com/en-us/downloads/)


# FIFA 21 Analysis: "Unraveling the Magic of FIFA: A Data Analysis Journey"

![](https://github.com/Chichi126/Duckdb-30-days-Challenge/blob/14d8a4e763b8bcc1baa983bb59d81bfb806a77c8/fifagif.gif)

# Introduction


For this #30daysduckdbchallenge I will be working with two datasets, Fifa_21_raw1 and Fifa_21_raw2, both featuring identical column names. 
This challenge has been an extraordinary journey in the realm of data analysis. It has not only honed my SQL skills but has also showcased the capabilities of DuckDB in effectively managing real-world data challenges. Here is the link to the dataset![Here](https://github.com/Chichi126/FIFA-21/tree/f1c833169aebbaae27337b9f811f17e956a76b1f/Dataset)

These datasets contain football (soccer) player information from the FIFA 21 game. They encompass details such as player names, nationalities, ages, positions, club affiliations, contract dates, and a wide array of performance metrics.

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



## DAY 2 & 3 CHALLENGE: 

(a) I created a  DuckDB database named **TheChallenge**

(b) I imported the two datasets **fifa21_raw_data** and **fifa21_raw_data_v**

(c) I connected to the MotherDuck for collaboration and accessibility by my teams

![The link for the SQL codes is](https://github.com/Chichi126/FIFA-21/blob/main/Day%201_2%20challenge.sql)





## Day 3 to 6 Challenge: Data Cleaning Process

#### Here are the tasks to be carried out
a) Converting Height and Weight to Numerical Form: For the 'Height' column, make sure to extract the numerical value (e.g., 6'0" becomes 6). For the 'Weight' column, remove the "lbs" and convert it to a numerical format.

b) Converting 'Value', 'Wage', and 'Release Clause' to Numbers:

c) The 'Value' column has values like '€100M' (which means 100 million) and '€10K' (which means 10,000). Strip the symbols ('€', 'M', 'K') and convert the values to actual numbers accordingly.

d) The 'Wage' column also uses 'K' (e.g., '€100K'), which should be converted to thousands.

e) The 'Release Clause' column follows the same pattern with 'M' and 'K'. Handling 'Star' Characters:

f) Remove the 'star' character from columns where it appears and make sure the columns are in numerical format.

i) Converted the 'Hits" column to an integer 

 ![Here is the SQL code for this analysis!](https://github.com/Chichi126/Duckdb-30-days-Challenge/blob/main/Day%203_6.sql)




## Day 7-9 Challenge: Querying the Datasets for insights

 #### Here are the tasks to be carried out
 
 - Identify players who possess high value but receive relatively low wages.
   
 - Determine the count of players available in the dataset for each position.

 - Find out which club has the largest representation of players in the dataset.

 - List the top 10 players with the highest OVA and POT values.

 ![Kindly follow the link to the SQL codes](https://github.com/Chichi126/Duckdb-30-days-Challenge/blob/14d8a4e763b8bcc1baa983bb59d81bfb806a77c8/Day%207.sql)

## Day 8 and 9 challenge

#### Here below are the tasks performed 
- Find players with the highest OVA and POT within each club

- Calculate the average OVA for players under 25 years old and over 30 years old in each club

- List the players who are the same age within each club

- Find the player with the highest POT for each nationality

- Rank players by their OVA in descending order within each club

*Follow the link below to see the SQL codes used to achieve this analysis* ![HERE](https://github.com/Chichi126/Duckdb-30-days-Challenge/blob/14d8a4e763b8bcc1baa983bb59d81bfb806a77c8/Day%208_9.sql)
  


## Day 10: Learning GitHub and Git

#### Tools used:

1) Text Editor: I employed Notepad++ to handle SQL code from DBeaver, saving it in a structured query language format for repository interaction.

2) Git Bash: A command-line interface facilitating Git interactions for version control on local and remote repositories.

3) GitHub: The hosting platform for organizing and sharing Git repositories.

#### Key steps taken:

- I created a local folder and a GitHub repository named Fifa-21 for organizing and sharing my work.
  
- Generated a classic token for GitHub authentication to interact with repositories remotely by going to GitHub settings --> developer setting --> Personal access token --> click on the dropdown then Token classic--> generate a classic token...... copy and enter any name at the box below, save in a safe place.

- Cloned the repository to my local PC using Git Bash by copying the repository URL and executing the 'git clone' command, I first got my  code by  going to my Repository code, then clicking the dropdown and copying the URL there and saving somewhere, go to your local, right click on your folder, and open with Git Bash (download it if you don't have) and inside the terminal after booting type: ls (enter) --> git clone (type in the URL copied from your repository) (enter). This automatically saves the repository (FIFA-21) into your local PC folder. 

- Transferred SQL codes from DBeaver to Notepad++, saving them in the local folder with an SQL format.

- Ensured Git recognized SQL files using 'git status.'

- Staged SQL files for commit using 'git add .'

- Committed changes with a comment using 'git commit -m "comments on changes."'

- Connected to GitHub using the personal access token and used 'git push' to send commits to the repository.

#### Key Git Bash commands used:

1. ls: List files and directories.
2. git add . : Stage files for committing.
3. git commit -m "comment on changes" : Commit changes with a comment.
4. git status: Check repository status.
5. git push: Push changes to the remote repository.
6. git pull: Pull changes from the remote repository.
7. git config --global credential.helper store: Configure Git to store credentials.



# Day 11 - 12 



## Power BI Visualization Challenge


### The tasks for the challenge include:

- Data Import: In Power BI, import the two pre-cleaned datasets from DuckDB. 

- Data Transformation: Perform any necessary data cleaning and transformation within Power BI if you didn't do this early but if you did the first data cleaning task then ignore this one. Ensure that the data is ready for visualization.

- Data Join: Combine the two datasets using a common column (e.g., "Name" or "LongName"). Choose the type of join that's most appropriate for your analysis.

##### Task 1: Nationality Distribution:

- Create a bar chart that displays the distribution of players' nationalities.
  
- Allow users to filter by nationality to see players from specific countries.

  
##### Task 2: Age vs. Potential:

- Build a scatter plot that explores the relationship between a player's "Age" and "POT" (potential).
  
- Add a trendline to visualize the trend between age and potential.

##### Task 3: Player Position Analysis:

- Generate a pie chart showing the distribution of player positions ("Positions" column).

- Make the chart interactive so users can select a position to view players with that role.


##### Task 4: Top Players by Overall Rating:

- Create a table that lists the top players based on their "OVA" (overall rating) in descending order.

- Allow users to filter by a specific club to see its top-rated players.

##### Dashboard:

- Combine the visualizations from Tasks 4 to 7 in a single Power BI dashboard.

- Add slicers, filters, and drill-through actions to make the dashboard interactive.

- Include a summary or insights section to describe key findings.

### Steps I took to achieve this:

- I exported the two pre-cleaned FIFA datasets as CSV files from DuckDB

- Imported them into Power BI through Power Query, where I did some data transformation by using the **Split column** feature to split the IR column to extract numeric value, then convert it to Whole number type  I also used the **Date feature** to extract the Year from the Date column

-  Joined the two tables on the **model view**

- Created an engaging dashboard with interactive findings using Power BI Canva, imported pictures, charts and Dax formula to get some KPIs

- Kindly follow the link to interact with the Dashboard ![HERE](https://app.powerbi.com/links/LBiF2j7Ihd?ctid=5c4e5ee6-54e6-49fe-a36f-e88a7eadfc94&pbi_source=linkShare)

### INSIGHTS


This  analysis is focused on 18980 players with an average Age of 25

1) England  had the highest number of  players with 1.7k

2) CB has the highest percentage of players in Position with 19.4% while  RB had the lowest % of 1.45

3) At Age 28 to 29 there tends to be a very high Potential level and at Age 42 down there tends to be a very low Potential level

4)  L. Messi was seen to be the highest overall-rated player and K Mbappe is also noted to be the most Valued player



# Day 17 - 19
We were presented with three datasets, which comprise events and records from Titanic kindly click ![HERE](https://github.com/Chichi126/Duckdb-30-days-Challenge/blob/240f290f3658690bc8a2ad2698f0fc690bf41541/Titanic_dataset_202311222326.csv) 


### Here are the Tasks:

##### Question 1:

Perform an analysis of survival rates based on fare in the Titanic dataset. Utilize the ntile window function to evenly bucket passengers into 6 bins. Calculate statistics for each bin, including survival rates. Examine if there is a correlation between fare amounts and survival. Note any inconsistencies or noise in the fare column and present your findings.

- Part 1), analyze the survival rate based on fare using the **NTILE FUNCTION** and statistics for each by

I employed the `NTILE` window function to categorize passengers into 6 fare bins, allowing for an even distribution across fare ranges, and then calculated the various statistics for each fare bin, including the total number of passengers, the count of survivors, the survival rate (averaged across each bin), the highest and lowest fares within each bin, and the total fare amount for each bin. This helped to identify trends in survival rates across different fare ranges 

Below is the screen display of the result of our query

![](![image](https://github.com/Chichi126/Duckdb-30-days-Challenge/assets/140970592/5d37981d-7cb8-4b03-a532-fb2642766270)
)

- Part 2) to identify the correlation: to achieve this I used the **correlation function** to calculate how the fare amount correlated with survival

Below is a screen display of the result

![](![image](https://github.com/Chichi126/Duckdb-30-days-Challenge/assets/140970592/9ed3a059-cda3-4cea-bad7-5af7f4af333c)
)

- Part 3) To identify any inconsistency or noise in the fare column, I used the **Comparison operating function** and also I used the **WHERE CLAUSE** to give my query a pointer, this will help to filter and identify any isolated records where information is either missing (NULL), has a negative value, inconsistencies or irregularities in the fare column data.

Here is the display of my query result

![](![image](https://github.com/Chichi126/Duckdb-30-days-Challenge/assets/140970592/e8f1ec59-34a7-4ecc-a9a4-da18e78e6bd3)
)

##### Question 2:

Conduct an analysis of survival rates based on sex in the Titanic dataset. Calculate the percentage of passengers who survived versus those who did not survive, focusing on the distinction between males and females. Express the survival rates and highlight any significant differences in survival ratios between genders. (use subqueries for higher marks)

In response to the above task, I delved in by calculating the percentage of passengers who survived and those who did not survive, specifically distinguishing between males and females. Using subqueries, it summarizes the total number of passengers, survivors, and non-survivors for each gender, emphasizing the stark differences in survival ratios between males and females by showcasing their respective survival and non-survival percentages.

Below is a screen display of the query's result

![](![image](https://github.com/Chichi126/Duckdb-30-days-Challenge/assets/140970592/80ff11c6-d518-44a4-9c54-425b96fe50ac)
)


##### Question 3:

Explore the relationship between survival and age in the Titanic dataset. Calculate the survival rate for different age groups, providing insights into how age correlates with the likelihood of survival. Consider any notable patterns or trends in survival based on age

To achieve this, I segmented passenger's age into distinct age brackets, from 'Below 20' to 'Over 80', creating cohorts to examine survival trends using the **CASE FUNCTION* This revealed how age correlates with the survival rates of the passengers and the number of passengers in each age group, It reflects the diversity of experiences on that ill-fated journey, offering insights into the human response to adversity across different age groups.

Below is a screen display of the query's result,  

![](![image](https://github.com/Chichi126/Duckdb-30-days-Challenge/assets/140970592/f8d19f6c-630b-4983-aeca-ca7a42f7a630)
)



Kindly follow the link to the SQL queries used to analyze the tasks![HERE](https://github.com/Chichi126/Duckdb-30-days-Challenge/blob/14d8a4e763b8bcc1baa983bb59d81bfb806a77c8/Challenge%2017%20-%2019.sql)








