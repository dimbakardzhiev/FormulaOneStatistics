# Formula One Statistics README

The Formula One Statistics application uses open data from https://www.kaggle.com/cjgdev/formula-1-race-data-19502017 to
compare the race statistics of seven current Formula One drivers, Lewis Hamilton, Fernando Alonso, Felipe Massa, 
Sebastian Vettel, Nico Hulkenberg, Sergio Perez and Daniel Ricciardo, across the seasons 2012-2017. It does so by using
a range of pie charts, line charts and column charts. The application also makes us live twitter data, displaying the 15 most
recent twitter mentions of Lewis Hamilton in real time.

How to run:

- Locally:
    In the Terminal, navigate to the folder in which the application is installed and type the following commands:
    
    -bundle install to install all required gems
	-rails db:migrate to run the database migrations
	-rake awad:seed_awad to parse the data from the JSON files in the lib/assets folder
	-rails server to start the Puma server
	
   Open a web-browser and navigate to localhost:3000 to open the application

- Deploying to Heroku
 
 	In the Terminal, navigate to the folder in which the application is installed and type the following commands:

 	- heroku login - to log in with your Heroku account credentials
 	- heroku create - creates a new empty application on Heroku, along with an associated empty Git repository
 	- git push heroku master - push the code from your local repository’s master branch to your heroku remote
 	- heroku run rake db:migrate - to run the database migrations
 	- heroku run rake awad:seed_awad - to parse the data from the JSON files
 	- heroku open - to launch the applicaiton on the Heroku server   