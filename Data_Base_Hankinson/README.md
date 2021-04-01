# Data Base Update – 04/01/2021 Mike Hankinson
----------------------------------------------------------------------------------

## Database Integration Deliverables
1.	Database stores static data for use during the project
2.	Database interfaces with the project in some format
3.	Includes at least two tables
4.	Includes at least one join using the database language (not including any joins in Pandas)
5.	Includes at least one connection string (using SQLAlchemy or PyMongo)
6.	Provide ERD with relationships

## Database Integration Progress
As of Thursday, April 1, our Final_Project database answers deliverables 1-4.  I will create the ERD tomorrow (deliverable 6).  
However, at this time, we have not discussed a method to integrate with SQLAlchemy or PyMongo (deliverable 5).  

## File Structure 
Files are currently housed within the following branch:  MikeHaninson/segement-2 Branch.  The files are maintained in the following structure.  

FOLDER: Data_Base_Hankinson

	Database_Create_and_Join_Tables_04012021.sql
	
	Database_ETL_04012021.ipynb
	
	Database_Integration_04012021.sql

	Deep_Learning_Recipe.ipynb

	Provisional_ML_Model_Week2.ipynb

	FOLDER: Resources
	
		country_index.csv
		
		owid-covid-data.csv

## File Details

•	**Database_Create_and_Join_Tables_04012021.sql** - This file contains code, that when run within the in pgAdmin Query Editor for the **Final_Project** database accomplishes the following: creates tables **raw_covid_clean** and **country** as well as performs the join on the 2 tables into a third.   Open file with Visual Studio Code.  

•	**Database_ETL_04012021.ipynb** – This file contains python code that performs the following operations:  imports data sets, populates both input tables into the pgAdmin **Final_Project** database.  Open with Jupyter Notebook.  

     **NOTE:  The joined table (model input) is named covid_data_final.  Model inputs must be modified for this change.**  

•	**Database_Integration_04012021.sql** – This file contains the **Final_Project** database that houses 3 tables.  Open file with pgAdmin

•	**Deep_Learning_Recipe.ipynb** - Using python code, develops a model for the data set.  Demonstrates the ability to interact with the **Final_Project** database.

•	**Provisional_ML_Model_Week2.ipynb** – Using python code, develops a model for the data set.  Demonstrates the ability to interact with the **Final_Project** database.

•	**country_index.csv** – Input data containing an index listing of all countries.  This file is read into **Database_Integration_04012021.sql** and populates **country** table.  

•	**owid-covid-data.csv** - Input data containing covid data.  This file is read into **Database_Integration_04012021.sql** and populates **raw_covid_clean** table.  


## Action Items
1.	****Include at least one connection string (using SQLAlchemy or PyMongo).**  Owner: team to discuss
2.	Provide ERD with relationships. Owner: Mike 



