# ETL-Project

Christy and Travis chose to do make a databases consisting of all Airbnb listings in the world's 100 most populous cities. 
Our data was derived from a few main sources: 
https://worldpopulationreview.com/world-cities
https://public.opendatasoft.com/explore/dataset/airbnb-listings/table/?disjunctive.host_verifications&disjunctive.amenities&disjunctive.features
https://public.opendatasoft.com/explore/dataset/airbnb-reviews/api/

The above data had to be retrieved with API's coded in our Jupyter notebook. In order to pare down the dataset, we trimmed the listing table down
to about 15 columns that we deemed important and and review data down to 4 columns. For additional tables, we wanted to incorporate city and country tables
that could give us more information on populations and average wealth of the different cities and countries.
We found this in online tables which we made into .csv files to clena up in our jupyter notebook.

To transform our data we loaded it into Jupyter notebook, removed the columns that weren't needed, and formatted the dataframes to be more streamlined
and match the SQL tables we created in pgAdmin. This included adding id's for each city and country row to match the tables in import.

Our final database is a SQL database using pgAdmin with four tables: listings, reviews, city and country. the reason we split up the reviews and listings
is because each listing can have multiple reviews and they link using the listing id number. Likewise, a city can have multiple listings and a country can
have multiple cities so they were removed into seperate tables to properly link as a relational database. SQL was also preferred because of our previous experience with it.