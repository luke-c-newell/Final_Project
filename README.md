# Final_Project
----------------------------------------------------------------------------------

## Overview of the Machine Learning Analysis 
This model will attempt to answer the following questions regarding CoVID pandemic:
- 



## Data Sources and Coding Files
Data for analysis was provided within the attached ([CSV file). ](/Resources/charity_data.csv)

Statistical analysis was performed in Python and is attached:  [AlphabetSoupCharity](AlphabetSoupCharity.ipynb), and [AlphabetSoupCharity_Optimization](AlphabetSoupCharity_Optimization.ipynb).

The data contained the following features:
- APPLICATION_TYPE—Alphabet Soup application type
- AFFILIATION—Affiliated sector of industry
- CLASSIFICATION—Government organization classification
- USE_CASE—Use case for funding
- ORGANIZATION—Organization type
- STATUS—Active status
- INCOME_AMT—Income classification
- SPECIAL_CONSIDERATIONS—Special consideration for application
- ASK_AMT—Funding amount requested

The following was the target variable:
- IS_SUCCESSFUL—Was the money used effectively

The following two columns were removed from the model because they were simply identifications for the features.  
- EIN and NAME—Identification columns

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
