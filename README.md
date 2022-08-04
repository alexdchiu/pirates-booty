# pirates booty

* Ting Wei Wang
* Perla Carlson
* Shelen Ells
* Alex Chiu

The best workout application for bootys of all types and backgrounds.
<!-- will revisit -->

## Design

* [API design](docs/apis.md)
* [Data model](docs/data-model.md)
* [GHI](docs/ghi.md)
* [Integrations](docs/integrations.md)

## Intended market
The people we expect to use this are those of all skill / fitness levels who are interested in working out with the potential of receiving booty (rewards) for accomplishments.
<!-- will revisit -->

## Functionality
Setting the project up with Docker and ensuring everything functions correctly. 

Build two databases first after the clone;
Docker volume create postgres-data
Docker volume create pgadmin 
run the build of the docker project
docker-compose up --build 


Ensure a migration is done in the Accounts CLI on docker to ensure django creates the databases correctly. 

python manage.py makemigrations
and 
python manage.py migrate


- designate amount time you have to workout 
  - maybe make this a user input feature only to input time needed to complete
- designate targeted body part(s)
- intensity / sweat rating (maybe make this a user input feature only)
- workout roulette
  - does spin to give you workout for the day

- sign up feature
- log in to store preferences and workout history and give ability to like workouts to repeat or to dislike to never see again
  - when signed in users have the ability to filter (time / body part / intensity)
  - create list / card view for users to peruse workouts w/o needing to spin wheel to randomize
- two free spins for non logged in users
  - no ability to filter workout types -> encourage guests to sign up
- more workouts you do, the more pirates booty you accrue and you can exchange for prizes
  - create personalized tracker for booty based on # of workouts done
  - how do we make it so people can't cheat the system (click on workouts pretend like they've done them? maybe this is thinking too far?)

stretch goals:
- filter out equipment by 
- social aspect
  - able to join groups
  - able to see other friends activity
  - able to congragulate / give thumbs up or something to friends for workouts completed / goals achieved
- import videos
- create prize API
- try to find API that gives random facts about nutrition and workout
- diet / nutrition
- food tracker
