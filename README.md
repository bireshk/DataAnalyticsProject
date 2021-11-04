# Agriculture and Forest Land Emission Analysis
​
​
## Final Project: 1st Segment Deliverable
​
![png_The-Glasgow-Climate-Change-Summit039s-Global-Stakes.jpg](https://github.com/bireshk/DataAnalyticsProject/blob/main/png/The-Glasgow-Climate-Change-Summit039s-Global-Stakes.jpg)
​
### TOPIC
​
Global warming is one of the biggest problems we are facing now. Not only industrialized emission, agriculture and forest land emissions also play a big role in contributing to global warming by releasing greenhouse gases (GHG) such as CO2, CH4, N2O. 
​
### REASON
​
In this project, we will use Python, AWS, Postgress, and Excell to get the data cleaned and stored and subsequently create graphs and charts using pivot table .Then we’ll use Machine learning to analyze the emission data , and finally, visualize through Tableau. We’ll try to create a dashboard with JavaScript and use interactive buttons to see the change in emission in different location comparing with the population.
​
​
### Source of Data:
https://www.fao.org/faostat/en/#data/GT
​
​
### QUESTIONS
​
1. What are the countries with the most emissions?
​
2. What are the items and elements contributing to emissions?
​
3. How has emission value changed over two decades?
​
4. Is there any relationship between emission and population?
​
5. Is there any relationship between development and emission?
​
6. What are the special measures taken by the least contributing countries towards emissions?
7. How can we categorize the countries by the range of emissions into red, yellow, and green zones?
​
8. How has emission increased or decreased over past 20 years?
​
9. How can Machine learning algorithms be used to predict the emissions for the future?
​
10. Which Machine Learning Model should be selected for the data analysis? Why?
​
​
## Machine Learning
​
To create a machine learning model, we first began by taking data after cleaning process. Next we are doing data preprocessing to feed the model and then starting with simple linear regression. Python and Sklearn will used to train/test our cleaned data. Once the data was trained it will be run through a model.
 
Regression analysis is a form of predictive modelling technique which investigates the relationship between a dependent (target) and independent variable (s) (predictor). The Regression models used for this project:
​
* Gradient Boosting Regressor
​
* Random Forest Regressor
​
* Support Vector Machine
​
* Decision Tree Regressor
​
## DATABASE
​
![ERD3](https://user-images.githubusercontent.com/62515666/140249177-62c6a9f0-f349-4a16-9a1f-24876e764c80.png)
​
​
## TOOLs & SOFTWARE
​
### Python
​
· Most popular programming Language
​
· Code easy to write
​
· Performs complex calculations quickly
​
· Handles large Data Files
​
· Help to access, process, and manipulate data
​
### ETL
​
· To get consistent Data
​
· Reduce the time to do analysis with a robust data
​
### AWS
​
. Database deals with organized storage of data.

· Easily accessible data for all team members with updated version.

· The four basic functions of persistent data storage are Create, Read, Update, and Delete (CRUD)
​
### Postgress
​
· Import and export csv files, create tables with SQL
​
### Excell
​
· Interactive charts and graph with pivot chart
​
· Filters and conditional formatting
​
· Organize and visualize for trends
​
#### Tableau
​
· Powerful analytic dashboard to tell a story which is visually appealing and easy for anyone to understand.
​
### Javascript
​
· Create attractive, accessible, and interactive data with the help of button- and drop-down menus.
​
· Visualize the data to communicate findings to the audience
​
## Other Details
​
### All the Abbreviations Used:
​
UNFCCC: United Nations Framework Convention on Climate Change
​
FAO: Food and Agricultural Organization () of United Nation
​
N2O: Nitrous Oxide
​
CH4: Methane
​
CO2: Carbon di Oxide
​
AFOLU: Agriculture, Forestry and Other Land Use
​
Fc: Calculated figure
​
### Reason for removing the columns
​
1. Fc: Calculated value. It’s not adding any information or data.
​
2. Source UNFCCC: United Nations Framework Convention on Climate Change has negligible data to compare and account for.
​
3. All units are in Kilotons, hence removed the column.
​
### Negative Value
​
Some amount of released CO2 is again used in photosynthesis and some countries forestation or reduce in deforestation helps in removal of excessive CO2 in atmosphere.
​
### TABLEAU Pages
​
CO2 Emission CH4 Emission
​
N2O Emission Emission through the Decades
​
Emission Vs Population Emission Vs Temperature
​
### Interactive Dashboard
​
​
​
 ![png_There%20is%20no%20planet%20B.jpg](https://github.com/bireshk/DataAnalyticsProject/blob/main/png/There%20is%20no%20planet%20B.png)
 
 
 #### So,can we make it 
​
 ![png_dbs-joins-united-nations-netzero-banking-alliance-to-tackle-climate-change](https://github.com/bireshk/DataAnalyticsProject/blob/main/png/dbs-joins-united-nations-netzero-banking-alliance-to-tackle-climate-change.jpeg)
 
 
 
### Sources:
​
https://www.fao.org/faostat/en/#data/GT
