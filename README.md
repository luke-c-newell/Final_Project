# Final_Project
----------------------------------------------------------------------------------

## Overview of the Machine Learning Analysis 
This model will attempt to answer the following questions regarding CoVID pandemic:
- Based on available data, how many cases can a country expect to see over the next given time period?
- Based on available data, how many fatalities can a country expect to see over the next given time period?
- Bonus: How have the creation of vaccines affected the number of cases/fatalities in the United States?

In order to accomplish this task, we must employ a novel model type that was not presented within the Data Analytics Bootcamp.  Rather than employing classification or clustering models, this analysis must incorporate a supervised regression ML model. 

Machine Learning models are not typically applied to time series data.  Rather, they are are usually trained using supervised learning; expecting data in the form of samples with inputs and outputs. However, it is possible to perform time series forecasting using ML.  In order to do so, the time series data must be transformed into a supervised learning problem.  

## Litterature Sources for Time Series ML Analysis
- [Applying Standard ML algorithms to Time-Series forecasting](https://towardsdatascience.com/preprocessing-time-series-data-for-supervised-learning-2e27493f44ae)
- [Convert a Time Series to a Supervised Learning Problem in Python](https://machinelearningmastery.com/convert-time-series-supervised-learning-problem-python/)


## Procedure
1. Import dependencies 
2. Import data set
3. Preprocess Data
4. Generate a OneHotEncoder instance
5. Fit and transform OneHotEncoder
6. Add the encoded variables to a dataframe
7. Merge OneHotEncoder features and drop originals
8. Split the preprocessed data into features and target
9. Split the preprocessed data into training and testing data
10. Create a StandardScaler
11. Fit the StandardScaler
12. Define the model
13. Where appropriate, define and add hidden layers
14. Where appropriate, define and add the output layer
15. Run the model






Questions we hope to answer with the data
Based on available data, how many cases can a country expect to see over the next two weeks?
Based on available data, how many fatalities can a country expect to see over the next two weeks?
Bonus: How have the creation of vaccines affected the number of cases/fatalities in the United States?


Machine Learning:
Scikit Learn
TensorFlow
Keras
