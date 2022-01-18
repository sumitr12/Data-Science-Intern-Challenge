# Data-Science-Intern-Challenge
This repository contains answers of the Shopify Summer 2022 Data Science Intern Challenge.
# Summer-2022-Data-Science-Intern-Challenge

Please complete the following questions, and provide your thought process/work. You can attach your work in a text file, link, etc. on the application page. Please ensure answers are easily visible for reviewers!

Question 1: Given some sample data, write a program to answer the following: [Click Here](https://github.com/sumitr12/Data-Science-Intern-Challenge/blob/main/Data_Science_Intern_Challenge_DataSet.csv) to access the required data set

On Shopify, we have exactly 100 sneaker shops, and each of these shops sells only one model of shoe. We want to do some analysis of the average order value (AOV). When we look at orders data over a 30 day window, we naively calculate an AOV of $3145.13. Given that we know these shops are selling sneakers, a relatively affordable item, something seems wrong with our analysis. 

1. Think about what could be going wrong with our calculation. Think about a better way to evaluate this data. 

Answer:
Initially, AOV is $3145.13 which is calculated naively using mean value of Total Sum of Order Amount divided by Total Number of Orders. The problem with this metric is that it doesn't consider Repetition of Order Amounts which are very high which carried the Mean to a very high value.
So, After analysing the same, I have cleaned the data and then checked for the Mean Metric. The value become way less than originally obtained. 
Again, I performed plotting of Distribution of Cleaned Data and I observe that data is skewed towards Lower Values and there is Standard Deviation of Values from Mean Value.
Thus, I select Median as more suitable Metric for Evaluation of AOV after Cleaning the Data.
For the Practical Implementation of the Same, [Click Here](https://github.com/sumitr12/Data-Science-Intern-Challenge/blob/main/Data_Science_Intern_Challenge.ipynb) to view it.

2. What metric would you report for this dataset?

Answer:
I would report Median as the metric for Calculation of AOV for this Dataset because of Outliers present in Data making the Mean value very high and even after cleaning the Data, there is a deviation among the values from Meean value and also Data is more concentrated towards Lower Range of Values. As Such, Median would be more suitable metric for this dataset.
3. What is its value?

Answer:
The value obtained after Data Cleaning and Calculating Median as AOV is $280.

Question 2: For this question you’ll need to use SQL. [Follow This Link](https://www.w3schools.com/SQL/TRYSQL.ASP?FILENAME=TRYSQL_SELECT_ALL) to access the data set required for the challenge. Please use queries to answer the following questions. Paste your queries along with your final numerical answers below.

1. How many orders were shipped by Speedy Express in total? 

Answer: 54

2. What is the last name of the employee with the most orders?

Answer: Peacock

3. What product was ordered the most by customers in Germany?

Answer: Boston Crab Meat

[Click Here](https://github.com/sumitr12/Data-Science-Intern-Challenge/blob/main/Data_Science_Intern.sql) to check the SQL Queries.

