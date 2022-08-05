07/12:
just discovered the project advice on the learn because it was NOT available to us last week. 
All this morning we spent re-working the project and setting it up correctly. 

07/13:
spent the day working on setting up the models, forms, settings, and admin.
got base user fields set up for the model to create with a username, email, name and passwords. 
still need model forms to show aspects for pirate coins as well as a VO

07/14:
plan is to create a vo model to poll data from workouts, finish urls to verify the back end works via insomnia. the user model will have a class method that add's coins to the users profile via an onclick handler on the react pages.

07/26:
multiple days of events as told in one journal entry. 
we've had quite a few extensive days of debugging to try and get everything symbiotic between the branches and users. 
we no longer need to vo model the workout data, and the coins functionality is working correctly. 
authentication took a few days to try and work out, thats successfully running now. 
at this point we're trying to get all of the logic implemented on each of the pages for react and move everything along in that direction. 
my plan today is to get the leaderboard pulling the logic correctly and showing a list view of leading coin amount to lowest 

08/01:
Today we got a functioning call working that takes data on the react, and adds it to the users database. Instead of creating a poller, we added a new model, and got a view set up with a post. Everytime someone completes a workout, not only does it add a coin, it adds the workout to the list as a workout history. 
Some small things still need to be adjusted like an alert to show if someone's already added this workout to the list, ensure its associated with only that users instance instead of all completed workouts ever. 
tomorrow i plan to correct that as well as make sure a put request to update information is working. 

08/04:
the entirety of the backend should be completed at this point. 
today i attempted to create a delete page but after a merge i had some issues getting react to deploy correctly again. someone else is assisting me with viewing it on the front end to ensure that its working correctly. 
today and tomorrow are just about finishing tests and trying to get everything buttoned up for tomorrow. 
we still need to create one singular branch to have people deploy from and complete the readme. 

08/05:  
today is submission day and we're spending the day doing final button up on small aspects of the website as well as getting the readme finished. 
