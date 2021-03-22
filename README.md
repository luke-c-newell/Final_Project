# Final_Project
----------------------------------------------------------------------------------

## Overview of the Machine Learning Analysis 
This model will attempt to answer the following questions regarding CoVID pandemic:
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
