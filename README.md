# pirates booty

* Ting Wei Wang
* Perla Carlson
* Shelen Ells
* Alex Chiu

The best workout application for bootys of all types and backgrounds.
<!-- will revisit -->

## Design

* [API design](docs/api.md)
* [Data model](docs/data-model.md)
* [GHI](docs/ghi.md)
* [Integrations](docs/integrations.md)

## Intended market
The people we expect to use this are those of all skill / fitness levels who are interested in working out with the potential of receiving booty (rewards) for accomplishments.
<!-- will revisit -->

## Setting up
###### Setting the project up with Docker and ensuring everything functions correctly:
1. Clone the directory from the "main-submission" branch.
2. Create two volumes after the clone;
    - Docker volume create postgres-data
    - Docker volume create pgadmin
3. Run the build of the docker project:
    - docker-compose up --build
    - or if with m1 chip: 
      - DOCKER_DEFAULT_PLATFORM=linux/amd64 docker-compose build 
      - docker-compose up
4. Perform a migration in the Accounts microservice so that models are correct:
    - Through Docker, CLI into the accounts microservice and run:
      - python manage.py makemigrations
      - python manage.py migrate
5. The project should be up and running. Enjoy!

###### To run tests:
- For workouts:
  - Through Docker, CLI into the workouts microservices and run:
    - python -m pytest
- For Accounts:
  - Through Docker, CLI into the Accounts microservice and run:
    - python manage.py test
    - If you get an error that says that you don't have permissions to create a Database; you need to get into the pgadmin server and add permissions allow it to create a database.

## Functionality
- This application was designed to utilize two databases, one for accounts and one for workouts. The workouts database should self populate from a provided SQL file and scripts. The accounts database is set up for user interaction via CRUD operations. 
- On the home page, users are able to spin a wheel which is populated with a random list of workouts via a fetch to the workout API. However, once the wheel stops spinning, only logged in users will be able to see the workout details. Guests are given a prompt to either sign up for an account or log in to an existing account.
- Logged in users also can perform a filtered search for workouts. They can select a targeted muscle and then select the required equipment for an exercise to generate results. The required equipment options are dynamically populated based on the target muscle selection. After both target and equipment are selected, a query is made to the workout API to return all results that match the selected options. The results then either can:
  - populate a wheel spinner to give the user a random workout from this list of filtered workouts or
  - populate a list so a user can select their own workout from this list of filtered workouts
- From the workout modal that subsequently pops up, a user then can click a button to indicate a workout has been completed. This then earns the user a booty coin.
  - These actions do two things:
    1. creates a new instance of a completed workout that is associated with a given user
    2. increments the coin property of a given user
- There is also a leaderboard that users can open which queries the user accounts database then sorts, slices and maps the results.
- Lastly, the user can view their user profile where:
  - the user has the ability to edit their information or delete their account via put / delete requests.
  - the user can see their booty coins earned to date and workout history. Both are also dynamically populated / updated when workouts are completed via a combination of queries to the user / workout databases, data manipulation and different hooks / state elements.