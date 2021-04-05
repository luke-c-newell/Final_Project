## Overview
This repository contains code for our final project, completed as part of the University of Texas at Austin - Data Analysis and Visualization bootcamp. The project will analyze data related to the Covid-19 pandemic, with the aim of producing a machine learning model that predicts the number of cases/fatalities that a given country can expect in the future.

#### Team Members:
- Mike Hankinson
- Tan Tran
- Luke Newell
- Keith Rabb

### Why did we select this topic?
The Covid-19 pandemic has impacted the lives of billions of people all over the globe. Every member of the team has been affected in some way and we would like to use the skills we have learned to contribute to a better understanding of the spread of the virus. 

### Description of the source of data
The dataset we are using is owid-covid-data.csv. Our World in Data have collated the data from a number of different sources, which can be found [here](https://github.com/owid/covid-19-data/tree/master/public/data). They source their data from the following organizations:

- COVID-19 Data Repository by the Center for Systems Science and Engineering (CSSE) at Johns Hopkins University (JHU)
- European Centre for Disease Prevention and Control (ECDC)
- Official government reports
- United Nations
- World Bank
- Global Burden of Disease

The live dataset can be found at [OurWorldinData.org](https://covid.ourworldindata.org/data/owid-covid-data.csv) and all data produced by Our World in Data are open access under the [Creative Commons BY license](https://creativecommons.org/licenses/by/4.0/). 

### Questions we hope to answer with the data
- Based on available data, how many cases can a country expect to see over the next two weeks? 
- Based on available data, how many fatalities can a country expect to see over the next two weeks?
- Bonus: How have the creation of vaccines affected the number of cases/fatalities in the United States?

### Communication protocols
As a team, we will communicate primarily through a private slack channel 'Group_9'. We have also shared our cell phone numbers with each other in case we need to urgently reach another team member. If a team member is unable to join the Tuesday or Thursday meetings, they should notify the other team members via the slack channel. We also have a recurring Zoom meeting set up that team members can join as needed.

## Technologies Used
### Tools:
- Python
- Pandas
- Numpy
- Tensorflow
- Jupyter Notebook

### Database:  
- PostgreSQL
- pgAdmin

### Machine Learning:  
- Scikit Learn
- TensorFlow
- Keras

### Vis & Analysis:  
- Matplotlib, Plotly
- ReadMe
- Google Slides
- Tableau

## Database Integration Deliverables
1.	Database stores static data for use during the project (COMPLETE)
2.	Database interfaces with the project in some format (COMPLETE)
3.	Includes at least two tables (COMPLETE)
4.	Includes at least one join using the database language (COMPLETE)
5.	Includes at least one connection string (COMPLETE - SQLAlchemy)
6.	Provide ERD with relationships (COMPLETE)

### File Structure 
The files are maintained in the following structure.  

FOLDER: Data_Base_Hankinson

	Database_Create_and_Join_Tables_04012021.sql
	
	Database_ETL_04012021.ipynb
	
	Database_Integration_04012021.sql

	Deep_Learning_Recipe.ipynb

	Provisional_ML_Model_Week2.ipynb

	FOLDER: Resources
	
		country_index.csv
		
		owid-covid-data.csv

### File Details

•	**Database_Create_and_Join_Tables_04012021.sql** - This file contains code, that when run within the in pgAdmin Query Editor for the **Final_Project** database accomplishes the following: creates tables **raw_covid_clean** and **country** as well as performs the join on the 2 tables into a third.   Open file with Visual Studio Code.  

•	**Database_ETL_04012021.ipynb** – This file contains python code that performs the following operations:  imports data sets, populates both input tables into the pgAdmin **Final_Project** database.  Open with Jupyter Notebook.  

     **NOTE:  The joined table (model input) is named covid_data_final.  Model inputs must be modified for this change.**  

•	**Database_Integration_04012021.sql** – This file contains the **Final_Project** database that houses 3 tables.  Open file with pgAdmin

•	**Deep_Learning_Recipe.ipynb** - Using python code, develops a model for the data set.  Demonstrates the ability to interact with the **Final_Project** database.

•	**Provisional_ML_Model_Week2.ipynb** – Using python code, develops a model for the data set.  Demonstrates the ability to interact with the **Final_Project** database.

•	**country_index.csv** – Input data containing an index listing of all countries.  This file is read into **Database_Integration_04012021.sql** and populates **country** table.  

•	**owid-covid-data.csv** - Input data containing covid data.  This file is read into **Database_Integration_04012021.sql** and populates **raw_covid_clean** table.  

## Overview of the Machine Learning Analysis 
This model will attempt to answer the following questions regarding the CoVID pandemic:
- Based on available data, how many cases can a country expect to see over the next given time period?
- Based on available data, how many fatalities can a country expect to see over the next given time period?
- Bonus: How have the creation of vaccines affected the number of cases/fatalities in the United States?

In order to accomplish this task, we must employ a novel model type that was not presented within the Data Analytics Bootcamp.  Rather than employing classification or clustering models, this analysis must incorporate a supervised regression ML model. 

Machine Learning models are not typically applied to time series data.  Rather, they are are usually trained using supervised learning; expecting data in the form of samples with inputs and outputs. However, it is possible to perform time series forecasting using ML.  In order to do so, the time series data must be transformed into a supervised learning problem.  

### Literature Sources for Time Series ML Analysis
- [Applying Standard ML algorithms to Time-Series forecasting](https://towardsdatascience.com/preprocessing-time-series-data-for-supervised-learning-2e27493f44ae)
- [Convert a Time Series to a Supervised Learning Problem in Python](https://machinelearningmastery.com/convert-time-series-supervised-learning-problem-python/)
- [Time series forecasting](https://www.tensorflow.org/tutorials/structured_data/time_series)
- [A Quick Deep Learning Recipe: Time Series Forecasting with Keras in Python](https://towardsdatascience.com/a-quick-deep-learning-recipe-time-series-forecasting-with-keras-in-python-f759923ba64)
- [How to Make Out-of-Sample Forecasts with ARIMA in Python](https://machinelearningmastery.com/make-sample-forecasts-arima-python/)
- [Quick start Prophet](https://facebook.github.io/prophet/docs/quick_start.html)

### Procedure
1. Import dependencies
2. Import data set from provisional database
3. Preprocess Data
4. Split the dataset into training and testing. 
5. Apply a standard scaler 
6. Difference the data to make it stationary
7. Define / Develop Neural Network 
8. Fit model
9. Build features for forecasting

## Comparison of ML Models
To optimize our ML forecast, we decided to compare various models to understand which would provide the most accurate prediction of future COVID cases and deaths in the USA. After completing some research on models for time series forecasting, we arrived on three models to test: an ARIMA, a DNN and FBProphet.

### Description of preliminary data preprocessing
To preprocess the data for use in the machine learning models, we completed the following steps:
- Selected desired columns from the database
- Use fillna function to replace any NaN values with 0
- Convert date column to dtype datetime

### Description of preliminary feature engineering and preliminary feature selection, including the decision-making process
For all three models, we decided to complete a time series forecast plotting datetime data against two features: new_cases and new_deaths in the United States. We decided to choose these metrics as they provide the best insight into the spread of the virus and the effect it has on the country. Time series forecast models rely heavily on historical data to predict future values. As such, we are currently using just one feature for each model to predict either new cases or new deaths.

- ARIMA: Created a new dataframe with columns 'date' and 'new_cases'/'new_deaths'.
- DNN: Incorporated a helper function, convert2matrix, to reshape the dataset into the correct RNN input shape: (batch_size, window size, input_features).
- FBProphet: Used a dataframe with the historical data with two columns: ds and y (date and feature).

### Description of how data was split into training and testing sets
- ARIMA: This model required splitting the data into training and validation datasets, by creating two csv files that the model could read from. The data was split using a split point that removed the last 7 days of data from the training dataset and saved it in the validation file.
- DNN: For training, we used 75% of the available data minus a 'look back' window of 15 days. The testing data used the remainder of the dataset.
- FBProphet: The training data used a dataframe with all the historical data. For testing, I created a new dataframe (future) to store the future dates and the predicted values were then populated by the model.

### Explanation of model choice, including limitations and benefits
- ARIMA: ARIMA stands for Auto-Regressive Integrated Moving Average and uses a moving window to predict future values. One limitation of this method is that the model produces a lagged correlation, which means the predicted values show movement after the lookback window has elapsed. This means the model is heavily dependent on recent data to show changes in its predictions. A benefit of this model is that the predicted values closely follow the recent trends and as such can show a higher level of accuracy compared to other models.
- DNN: The Deep Neural Network model was chosen as it works well with a complete dataset and is able to be used with univariate and multivariate data. A limitation of the model is that it also is affected by lagged correlation, but this model does capture the overall trends with a high degree of accuracy. 
- FBProphet: This model was chosen as it is a suitable model for time series forecasting, that uses past trends to predict future values. One limitation is that the model is highly affected by seasonality, which reduces the benefit as we only have ~420 days of data and so yearly trends are not able to be determined. But, the model does allow for weekly and monthly variations, which will come in particularly useful when analyzing COVID-19 metrics.

## Creating Dashboard Using Tableau

### World Covid Map

 ![alt text][Image1]
  
 [Image1]: https://github.com/luke-c-newell/Final_Project/blob/ttan0408/segment-2/Interactive_World_Wide_Covid_Map.PNG "Create World Covid Map"
 
### New Covid Cases Plot

 ![alt text][Image2]
  
 [Image2]: https://github.com/luke-c-newell/Final_Project/blob/ttan0408/segment-2/World_New_Covid_Cases_Plot.PNG "Create New Covid Cases Plot" 
 
### New Vaccinations Pie Chart

 ![alt text][Image3]
  
 [Image3]: https://github.com/luke-c-newell/Final_Project/blob/ttan0408/segment-2/World_New_Vaccination_Cases_Plot.PNG "Create New Vaccinations Pie Chart" 

You can find the [Interactive Dashboard here](https://public.tableau.com/views/USANEWCOVIDCASES/Team_1?:language=en&:display_count=y&publish=yes&:origin=viz_share_link), where the user can click on the world map and select their country of choice, then the New Case Chart and Total Vaccination pie chart will be updated to show country specific information.

