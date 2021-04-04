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
- Postgres SQL
- PG Admin

### Machine Learning:  
- Scikit Learn
- TensorFlow
- Keras

### Vis & Analysis:  
- Matplotlib
- ReadMe
- PPT or Google Slides
- Tableau


## Overview of the Machine Learning Analysis 
This model will attempt to answer the following questions regarding the CoVID pandemic:
- Based on available data, how many cases can a country expect to see over the next given time period?
- Based on available data, how many fatalities can a country expect to see over the next given time period?
- Bonus: How have the creation of vaccines affected the number of cases/fatalities in the United States?

In order to accomplish this task, we must employ a novel model type that was not presented within the Data Analytics Bootcamp.  Rather than employing classification or clustering models, this analysis must incorporate a supervised regression ML model. 

Machine Learning models are not typically applied to time series data.  Rather, they are are usually trained using supervised learning; expecting data in the form of samples with inputs and outputs. However, it is possible to perform time series forecasting using ML.  In order to do so, the time series data must be transformed into a supervised learning problem.  

## Literature Sources for Time Series ML Analysis
- [Applying Standard ML algorithms to Time-Series forecasting](https://towardsdatascience.com/preprocessing-time-series-data-for-supervised-learning-2e27493f44ae)
- [Convert a Time Series to a Supervised Learning Problem in Python](https://machinelearningmastery.com/convert-time-series-supervised-learning-problem-python/)
- [Time series forecasting](https://www.tensorflow.org/tutorials/structured_data/time_series)
- [A Quick Deep Learning Recipe: Time Series Forecasting with Keras in Python](https://towardsdatascience.com/a-quick-deep-learning-recipe-time-series-forecasting-with-keras-in-python-f759923ba64)
- [How to Make Out-of-Sample Forecasts with ARIMA in Python](https://machinelearningmastery.com/make-sample-forecasts-arima-python/)
- [Quick start Prophet](https://facebook.github.io/prophet/docs/quick_start.html)


## Procedure
1. Import dependencies
2. Import data set from provisional database
3. Preprocess Data
4. Split the dataset into training (ARIMA model) and testing. 
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

