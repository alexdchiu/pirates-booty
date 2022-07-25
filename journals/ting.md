## July 25, 2022
- discussion of next step of project. Will work on create a form to filter the wheel based on the targeted area and maybe intensity. 

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
