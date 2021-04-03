## Overview
----------------------------------------------------------------------------------
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
- Tableau :https://public.tableau.com/views/USANEWCOVIDCASES/Team_1?:language=en&:display_count=y&publish=yes&:origin=viz_share_link


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

## Procedure
1. Import dependencies - complete
2. Import data set from provisional database - complete
3. Preprocess Data - provisionally complete
4. Split the dataset into training (ARIMA model) and testing. 
5. Apply a standard scaler 
6. Difference the data - to make it stationary.  
7. Define / Develop Neural Network 
8. Fit model
9. Build features for forecasting

## Status
Becoming familiar with the new methods to apply ML forecasting to time series data.


