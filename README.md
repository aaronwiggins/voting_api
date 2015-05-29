#Voting API

##Overview
Create an API using Rails. Users will be allowed to vote for candidates.

###Objectives
Build a Rails-based application which serves up an API responding with JSON.
There is a Candidates, Voters, and Votes table. Each are created with associations
and validations. When voters are created, they are given a token for authentication.
These tokens need to be used when creating or destorying a vote.

###To Run...
* Clone Git Repository [here](https://github.com/aaronwiggins/voting_api.git)
* Navigate to folder directory
  * `bin/rake db:migrate`
  * `bin/rake db:seed` if you want to populate the db based on the functions in the `seeds.rb` folder
  * `bin/rails server`
  * Navigate to your host address
