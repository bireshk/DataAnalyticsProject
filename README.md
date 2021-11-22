# Agriculture and Forest Land Emission Analysis

**Submitted By:** Biresh Kundu | Praveeja Sasidharan Suni | Ruma Talukder | Saranya Durairaju </br>
_Date_: November, 24th, 2021\
_Data Analytics & Machine Learning Project_ : **Emission Analysis** <br/>


Presentation: [Link to Presentation](https://onedrive.live.com/view.aspx?resid=B51D62DA80D49BB1!7979&ithint=file%2cpptx&authkey=!AMpiq2tPZV8M22Y)

Analysis dashboard:  [Link to Web Page](http://emission-tableau1.herokuapp.com/)



![image](https://github.com/bireshk/DataAnalyticsProject/blob/main/Image/The-Glasgow-Climate-Change-Summit039s-Global-Stakes.jpg)


## Table of Contents
  * [Overview](#view)
  * [FlowChart](#flowchart)
  * [Analysis](#start)
  * [Database](#data)
  * [Machine Learning](#machinelearning)
    * [Linear Regression](#linearregression)
    * [Classification Algorithms](#classificationalgorithms)
  * [Visualization](#viz)
    * [Static Webpage](#staticpage)
    * [Dashboard](#heroku)
  * [Technologies](#tech)
  * [Summary](#result)

## <a name="view"></a>Overview
Global warming is one of the biggest problems we are facing now. Not only industrialized emission, agriculture and forest land emissions also play a big role in contributing to global warming by releasing greenhouse gases (GHG) such as CO2, CH4, N2O. After this analysis we will know more about agriculture and forestland emission.  

This project aims to deliver detailed view of each Country, Element, Items that are contributing to emission each Year. Also using the Machine Learning model, the data is anlayzed and categorized into zones. Our purpose is to Analyze the Emission data and to create a complete system from Cleaning to Modelling. 

### Source of Data:
We have used the data from data source of Food and Agriculture Organization of United Nation. This data is reliable and easily available. 

https://www.fao.org/faostat/en/#data/GT

**Image sources** : https://github.com/bireshk/DataAnalyticsProject/blob/main/Data/Image_Sources.txt


The project folder consists of these technical portions:
```
PROJECT
├── .gitignore
├── README.md
├── Data
│   ├── Emission_data.csv
│   ├── Image_Sources.txt
│   ├── Population_data.csv
│   └── schema.sql
├── Image
│   └── All Images
├── Scripts
│   ├── Cleaning_Analysis
│       ├── ETL_Emission_Population.ipynb  
│       └── Pyplot_Emission_Population.ipynb
│   ├── ML
│       ├── ML_Emission_Classification_CH4.ipynb  
│       ├── ML_Emission_Classification_N2O.ipynb
│       ├── ML_Regression_Analysis_CH4.ipynb
│       ├── ML_Regression_Analysis_N2O.ipynb
│       └── ML_Regression_Analysis_World.ipynb
│   ├── Tables
│       ├── Data_Emission_Population_Merge.ipynb  
│       ├── Data_SqlAlchemy_query.ipynb
│       └── Data_Subtable_Creation.ipynb
│   ├── Webpage_Static
│       ├── Images
│       ├── index.html
│       └── style.css
│   ├── Webpage_Tableau
│       ├── Static
│           ├── images
│           └── css
│       ├── composer.json
│       ├── index.html
│       └── index.php
```

## <a name="flowchart"></a>Flow Chart

Below diagram represents the complete flow chart of the project:

![image](https://user-images.githubusercontent.com/85472349/142781485-c2a0ad38-0903-4fee-8239-faad5a15bb42.png)


## <a name="start"></a>Analysis

The source data was analyzed properly and cleaned for further processing. Below are the steps followed on data transformation:

* Uncleaned Emission and Population data are moved in to two separate data frames

* Dropped the "Unit" columns from both Emission and Population datasets as it contains the same information(**Emission** - Kilotonnes, **Population** - 1000persons)

* Dropped the Years from 1961 to 1989 as it have very negligible informations.

* Normalized the data by changing the Year columns to rows using the “melt” statement.

* Null values replaced with zero and the cleaned data is finally saved as CSV file and moved to AWS’ S3 bucket.

### Charts

* Trend of elements which cause Emission over years are plotted as a line graph

* Emission of top 25 countries are plotted using a bar chart

* Emission over years are plotted using a scatter plot

* Percentage of Emission caused by different Items such as Rice Cultivation, Manure Management, Savanna Fire etc. are plotted

* The Items causing CH4, N2O & CO2 emissions are seperatly plotted using Pie charts.

![image](https://user-images.githubusercontent.com/85472349/142782476-8dfd8342-cc50-4952-8521-a81ca4f3c965.png)


**Results**

* CO2 emission is having the highest percentage.

* CH4 and N2O emission is much less than CO2, but with high warming potential. 

* Brazil has the highest Agriculture and Forest land emission, Indonesia comes second.

* Russian Federation has the lowest Agriculture and land emission, Romania comes next.

* When we look at the emission over years, there is lot of variations and it's going upwards from 2010 onwards.


## <a name="data"></a>Data Base

* The Emission table and Population table are merged to create the new Emission table with population using the common column "Area_Code"

* Merged table has been splitted into two separate table to have countries (Area_Code < 5000) and world records (Area_Code >= 5000)

* The data is then moved to AWS S3 bucket for project Analyis and Postgres for storage, future data retrieval

![image](https://user-images.githubusercontent.com/85472349/142781510-71497eac-63e7-4fad-b5d6-0dbe9e3a720f.png)

### Subtables

* The main source table "Emission" is split into four tables like Area, Element, Item, Emission and moved to Postgres using SQLAlchemy

* Using the join and query, the same table can be retrieved in future for analysis

* This helps us in Easy storage, data backup and efficiency

![image](https://user-images.githubusercontent.com/85472349/142781510-71497eac-63e7-4fad-b5d6-0dbe9e3a720f.png)


## <a name="machinelearning"></a>Machine Learning

In Machine Learning, Methane (CH4) and Nitrous Oxide (N2O) emissions are analyzed as it contributes more on Agriculture and Forest land emissions. Below are the list items contribute in each gas. 

![image](https://user-images.githubusercontent.com/85472349/141954151-80dd5f92-6b6c-4240-a29c-9208c55a253b.png)

### <a name="linearregression"></a>Linear Regression

Linear regression attempts to model the relationship between two variables by fitting a linear equation to observe data. Using Linear regression the most contributing items of top 3 countries and the Whole world data are analyzed and this results will help in figuring the action needed items for those countries.

**Global Green House Gas Emission Analysis**

![image](https://user-images.githubusercontent.com/85472349/141962584-68e4989b-5cc5-4c49-9c5c-1b83b70c42d1.png)

```Linear Regression results help us to view whether the Emission data is constantly increasing or decreasing, how the data are linearly related, Items which need immediate attention etc. ```


### <a name="classificationalgorithms"></a>Classification Algorithms

* Machine learning methods that predict the future Emission depends on many factors like soil temperature, air moisture, Volumetric Water Content(VWC)
* Classification algorithms will help us identifying the Emission values into different Zones for each Elements
* Classifying the Target variable “Zones” into Binary Values is not possible as the data is Imbalanced
* Multiclass classification is the problem of classifying instances into one of three or more classes
* Data pre-processing and Categorizing Element, Item, Year, Population, Emission features


#### Logistic Regression Classifier

Logistic regression is a simple yet very effective classification algorithm. Multinomial logistic regression is an extension of logistic regression that adds native support for multi-class classification problems. Below are the Confusion Matrix:

![image](https://user-images.githubusercontent.com/85472349/142752292-5bb6374d-8092-4ce2-b47e-659e0e341740.png)

![image](https://user-images.githubusercontent.com/85472349/142752300-9a3d445b-9678-49d7-a916-b94c3f1249ff.png)


#### Random Forest Classifier

A random forest classifier works with data having discrete labels or better known as class. It reduces overfitting in decision trees and helps to improve the accuracy. It is also flexible to both classification and regression problems and works well with both categorical and continuous values.

![image](https://user-images.githubusercontent.com/85472349/142752314-547b3c5d-23c4-4c5e-8fff-af6b766cfa3b.png)

![image](https://user-images.githubusercontent.com/85472349/142752316-060719b4-76b9-4f71-953a-e24d8c1b7683.png)


### ML Results

![image](https://user-images.githubusercontent.com/85472349/141973384-fcd1b24f-42be-4f14-a5db-994ff5471916.png)

### ML Summary

The above results show that the Logistic Regression Algorithm classifies the Emission more accurately than Random Forest Classifier. Since our data is Skewed (Stratify was used) and Imbalanced which results in more number of items in specific categories. This might be the reason that our Logistic performed better than the Random Forest. Also, Logistic regression performs better when the number of noise variables is less than or equal to the number of explanatory variables. (Noise variables - Difficult or impossible to control; Explanatory Variable - manipulated in an experiment by a researcher). So. which model performs better completely depends on our Data set.

```With our Classification model, we can easily categories the countries into zones (Red, Orange, Yellow & Green) according to the impacting Items, Emission value and Population. Let's aim to have most of the countries into our Zone 0 in future```

For more details about Machine Learning Model, please visit : [ML_Repo](https://github.com/saranyadurairaju/Module20-Final-Assignment)

## <a name="viz"></a>Visualization

Now its time to visualize all the information and results in a webpage for easy and interactive way. 

### <a name="staticpage"></a>Static Webpage

Static Webpage is created to summarize and visualize the analytical charts and Machine Learning Model results using HTML, CSS.

Analysis results: [static page](https://saranyadurairaju.github.io/Module20-static-webpage/)

### <a name="heroku"></a>Dashboard

Tableau emission story is incorporated as a Webpage using HTML to make it more flexible and interactive. Tableau story consists of below items:

* Map, Bubble chart of Countries with Population and Total Emission
* Views of Item wise emission data 
* Element wise emission details for countries

Complete Emission Analysis Webpage: [Emission_Analysis_Web](http://emission-tableau1.herokuapp.com/)
 
## <a name="tech">Technologies</a>

The below tools and softwares are used for this project: 

* Python 
* HTML/CSS
* Postgres
* Jupyter Notebook
* Tableau
* Plotly
* Heroku
* AWS
* SQLAlchemy

## <a name="result"></a>Summary

* Analysis of data using charts
* Relationship is determined using Linear Regression
* Categorized the data into Zones according to the Emission value
* Easy and Interactive dashboard data visualization

**With our results, its easy to predict where and how fast the action needs to be taken. Hoping to bring all the countries into our Green Zone soon!!!**


![image](https://user-images.githubusercontent.com/85472349/142783875-e54ce30a-3125-43bd-af08-7d16a864cc34.png)
