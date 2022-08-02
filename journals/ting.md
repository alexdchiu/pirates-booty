## August 1, 2022
- fixed wheel css to be center-aligned. 
- fixed leaderboard css and filtered search css
- enhanced login and sign up form css 

## July 28, 2022
- added redirect page after successful sign up.
- adjusted user profile jsx to make it dynamic.
- adjusted App.css

## July 27, 2022
- everyone assisted Perla to have the list of workouts to show
- finally finished creating the Modal pop up message to show user they earned a coin after clicking the Complete Workout button. Learned about use of Bootstrap Modal which is similar to the normal Bootstrap we have been using. In the beginning had some struggle figuring out how to implement this feature because I was not familiar with how Modal works but was able to figure it out in the end. 

## July 26, 2022
- finished filter form based on discussion of hard coding all 19 target areas and 10 levels of intensities for now. Maybe will need to rewrite if we decided to make it dynamic. 
- disccusion on other features to make. Will work on creating pop up window after hit the Complete Workout button to alert user they earn a coin. As well as creating a view to add workout IDs to the completed workout table in the user database- however I am not really familiar with the logic of the second task nor how it goes, so I decided to work on the pop up window first. 

## July 25, 2022
- discussion of next step of project. Will work on creating a form to filter the wheel based on the target area and maybe intensity. 
- Tried various codes to figure out how to create the form. Use dynamic API endpoint
(`${process.env.REACT_APP_WORKOUTS}/api/workouts/filtered/random-wheel?target=${target}&intensity=${intensity}`) to filter based on the selected dropdown values. Tried to have all intensity level and target areas show up using the guest wheel API endpoint however it did not work well because it only pulled 10 instances based on the Limit of 10 in FastAPI call and we do not have an endpoint to show all the target areas/internsities. Decided to stick with guest wheel API for now and discuss with the group if I should hardcode at this time or create a new endpoint with a list of every area and intensities. Trouble implementing dynamic option values with map function because the dropdown would have duplicated values- but fixed after googling some example codes. 

## July 22, 2022
- debug with Curtis. Unable to authenticate user because when using Django User object, it needs to be User.objects.create_user instead of just create. Create_user method will hash the password but with the create method, the password will be exactly the same as what is entered, and will not be usable to authenticate the user and also if website is hacked, this will allow them to have access to the password. 
- another thing I learned why I kept getting the same token to show up despite me not entering the log in information was that for Mac system, you need to close the app, not just the window to clear the cookie. Because I did not close, it kept the same old cookie. One way to clear it was to go to the Application, and right click on the localhost:3000, and click clear.

## July 20 and 21, 2022
- trying to work on the authentication page using the Authenticate Cookbook, however it was a struggle. Put the auth codes in project and followed the instructions, but still does not work. Finally decided to contact Curtis for some help...

## July 19, 2022
- fixed docker/database/yml file issues
- trouble when trying to run the GET/POST requests in Insomnia due to error of 
"Connection refused. Is the server running on host 'postgres' (172.26.0.4) and accepting
TCP/IP connections on port 5432" (reason likely because system shutdown unexpectedly).Finally fixed it by running Stack Overflow commands: postgres -D /usr/local/var/postgres, and kill -9 PID.
- added the Account API to sign up form and working, user now able to create account via 
frontend and save to database!! 

## July 18, 2022
- added images to folder and modified css to reflect path
- added an audio file to login form button

## July 15, 2022
- discussion on blueprint of application with Perla and Shelen
- modified css and removed password2 
- trying to get API to work on frontend, but was not able to get requests

## July 14, 2022
- discussion on frontend blueprint with Perla
- updating frontend css

## July 13, 2022
- modified Excalidraw to have a better idea on how to design frontend
- added validation codes for sign-up form page and figured out how to clear fields after submit 

## July 12, 2022
- install bootstrap to main branch and Perla and Shelen helped to fix error with git push to main
- creating login form and sign-up form with app.css 

## July 11, 2022
- discussion of project layout and responsbilities
- will be working on frontend part of login and sign-up page
- created app.js, nav.js

## July 8, 2022
- created integrations.md (list of data needed to integrate with) and data-model.md (Markdown tables)

## July 6, 2022
- discussion of project layout
- modified the Excalidraw by adding the sign-up page box

## July 5, 2022
- disussion of project layout
- came up with app name, general idea of what the application is about, and some possible stretch goals
