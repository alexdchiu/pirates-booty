The date of the entry
A list of features/issues that you worked on and who you worked with, if applicable
A reflection on any design conversations that you had
At least one ah-ha! moment that you had during your coding, however small

Keep your journal in reverse chronological order. Always put new entries at the top.
## August 5, 2022
Today I worked on:
* Getting the project ready for submission.

- Today was a busy day. Last sprint before project submission. Our group huddled up and tried to figure out last remaining tasks.
- Started by trying to clean up files, using black + flake8. Then worked on merging everyones tests into my working branch.
- Then worked on beefing up the readme file to help users understand how to get the application to properly work.
- Lastly, worked on updated the api.md file and then merging everyone elses edits and journals to my branch.

## August 4, 2022
Today I worked on:
* Incorporating new components teammate built into the working branch. Also fixing some state issues on the userprofile page. Built unit tests for workout DB.

- We built additional components (user profile edit / delete) that I needed to merge into my branch. Given all the issues that we've had with git merges to date, I've had to do them manually onto my branch since this seems to be the working branch at the moment. 
- Once the manual merge was done, I worked on getting a default profile picture to show with some JSX logic / conditionals. Now, users can update their profile with a image URL and that will show instead, but by default it will show the stock photo I built into the code. 
- Another small issue that came up after we imported the edit / delete componenets was that there was a user state issue on the userprofile component where after an update, the user's name was lagging. Fixed this by changing the state variable we were using since we had already experienced this issue elsewhere so the user properties are now all correctly updating whenever the profile page loads.
- Lastly, I had to set up my tests for our project submission - this was a little more challenging than anticipated, but ultimately was able to get 6 tests working for the workout database / api. 


## August 3, 2022
Today I worked on:
* Cleaning up some front end and incorporating other changes teammates made into our working branch.

- Today I worked on incorporating changes we made to the user / completed workout models so that we could enter dates for a completed workout. Then I worked on getting it to show on the front end which was a bit complicated since we were doing multiple fetches to different databases / tables so I had to re-manipulate data so that a date associated with a workout ID / user ID would show.
- Our team also worked with Andrew on trying to figure out why our main branch was corrupted. Hopefully we didn't scare him off with the problems we were having.
- Lastly I incorporated other styling changes we made across the site into our working branch.

## August 2, 2022
Today I worked on:
* Trying to get the completed workouts to show on a user profile and changing the filter form.

- Picking up from yesterday and with a fresh set of eyes / good night's rest, I was able to think about why we were having issues with the POST request when trying to create a new instance of a completed workout that was linked to a user. I realized that we needed to use the user encoder and voila it worked. 
- Getting the completed workouts for a user to show on the user profile page was a bit more complicated for me. First we had to do a fetch for a user profile / data. Then we had to pass to another function where we filter the list of all workouts to only include results that matched the user ID and create a new list that matched but only had the IDs of the filtered list of workouts. Lastly, we had pass this list of IDs to another function that performed a fetch to the workout api to get the workout data for each workout with an ID in the list that was passed in. I was having issues since the last operation relies on the previous operation which relies on the first operation and was having issues with getting awaits to work in succession. Ultimately, it took a lot of trial and error and reading up about await and then and eventually I was able to get them to successfully chain together so that we are able to display the workout history of a user. Lastly with this information, I used a React component that I found online called a ListGroup where I could map out over the list and dynamically show a list of workouts (instead of a table). Tables were very restrictive with what you could do with rows or data in the rows. By using ListGroup, I was able to easily create links within the list so users could click and have a modal pop up that showed the workout details. 
- After discussing with the team, we decided that it might be more practical that a user would filter for equipment instead of intensity. To make this change, we had to go and change the workout API to handle equipment instead of intensity which was easy enough. Lastly, I had to change the front-end JSX everything was dynamically populated with intensity. This was really confusing since a lot of things were similarly named, but by pulling up the old file in gitLab and doing searches for variable names, I was eventually able to get it to work. My head hurts.


## August 1, 2022
Today I worked on:
* Trying to get the post command to the user database to work so we could populate rows of workout IDs.

- Shelen built out the model / view / URL but we were having some issues with the post request itself. First we had to change up the body to dynamically include the workout ID and also to stringify it. Then we got stuck with the request itself which kept spitting out 405 errors. We tried playing with a lot of different things, but after a while of trying with no success, Vivian pointed out that we were missing a back slash at the end of the URL......sad. But it works! Next we need to figure out how to enter a user ID as well to match so we can ultimately filter it to show a specific user's workout history.



## July 31, 2022
Today I worked on:
* Worked on getting state to update on user profile. Filtered form list to have link for workout detail modal to pop up. Get # of exercises for a given intensity to show on filter form.

- There was an issue where on the user profile, the state of the user wasn't being refreshed so even after a user completed a workout, the number of coins was not being updated. After trying to play around with the auth component trying to get that to do another call, I ended up adding the getUserData function to the userprofile component and doing it on this component level. Not ideal, but it works.
- Next, I had to add functionality to the workout list view in the filter form to have the workout detail modal pop up. This took some time since I had to figure out how to populate a modal with the specific workout that a user clicks on. 
- Lastly, I added some detail to the intensity filter dropdown options where a user could see the # of results for a given intensity level. I did this by manipulating the data and looping over the exercises with a counter that incremented for a given target / intensity.


## July 27, 2022
Today I worked on:
* Trying to get the search filter options to be dynamically populated to improve user UX.

- The team had a stand up meeting to kick start the group project session. We worked on trying to help everyone get their front-end working since we had some new errors pop up regarding the wheelspinner. We also spent time working together to get a component that a teammate was working on up and running. 
- Later on, I worked on trying to get the search filter options to be auto populated and replace the hardcoded placeholders we had. This required a little data manipulation to get a list without repeats of the targeted muscles that had instances of exercises. After getting this list and dynamically mapping it out to populate the list of options for that filter, I shifted my attention to trying to get the options for desired intensity to also be dynamic. This required a little more thinking since some targeted muscles only had a few instances, so I wanted the user to only be able to select from those intensity levels that were available for a given target. Lastly, I added some conditionals in the JSX so that that intensity filter only showed after the target filter was selected.  

## July 26, 2022
Today I worked on:
* Integrating state into the filter form.

- Now that we have a filter form in place, I worked on getting the wheel component to pop up after filters were selected. This involved updating the onClick function where we set the wheelspinner to 1) dynamically appear only upon the click of a button with proper filters and 2) to be auto populated with the results that meet the criteria of the filter. This was a bit challenging since I still don't have that firm of a grasp of hooks / state, but after a lot of playing around / googling, was eventually able to get it to work. Hooray!
- We also had issues on the main branch where the front end was not working. We've been having issues with the wheelspinner module that was imported. For some reason every now and then someone gets an error where value.substr is not a function. However, since the module is directly installed in the docker container we actually don't even have access to the files that it says are causing an error we can't problem solve on those files. After discussing and trying to figure out a solution, we figured maybe the best path forward was to create a main2 since we could not diagnose the issue.

## July 25, 2022
Today I worked on:
* Getting api query to work for dynamic list of exercises by ID. Cleaned some code up to be able to pass data for queries to user database. Changed modal functionality.

- I was tinkering with my psycopg / postgres / fastAPI to be able to allow us to input a dynamic list of exercise IDs into a query. I was stuck forever but fortunately the SEIR Yesenia suggested I try ANY instead of IN in my sql query. This worked and we can now pass a list of IDs into a query and get the results.
- Our team huddled up and decided to store completed workouts on a separate table on the users DB. It's not pretty but every instance we'd click that a workout was created, it would add a row to the completed workouts table linked to a user with a foreign key. Then we could query that table by user ID, get a list of exercise IDs and then do another query to eventually be able to show a list of completed workouts on the user profile. Not pretty, but hopefully this works. So based on what we were able to achieve yesterday, we had the user and exercise data available to us in the state and we could pass this into the post request we'd make to the completed workouts table in the user DB. We hope..

## July 24, 2022
Today I worked on:
* Getting user and token state to work across different components.

- Once we had the login auth working, now we needed to figure out how to set state so that we could pull user data for different portions of the website. It took some tinkering since my knowledge of state is not that great, but after a lot of googling / repeated trial and errors, I was able to get the authState / userState working and could then use information from the userState to populate the user profile page. 
- As an added bonus, I was able to build a modal that popped up after a wheel spin. This also took some tinkering with state since I needed to be able to take the winning exercise and use that data to populate the modal card. 

## July 22, 2022
Today I worked on:
* Getting login auth to work.

- Vivian was fortunately able to flag Curtis who dropped in to help provide some guidance. We had an issue because we did not know that DJango required a specific create_user method vs create which would encrypt passwords. Once he pointed this out, we were able to get users and auth tokens all working. Who knew such a small tweak to one command could make such a difference?


## July 21, 2022
Today I worked on:
* Cleaning up GHI directory and load to try and remove errors.

- We had 3 package.json files in GHI directory or sub directories


## July 20, 2022
Today I worked on:
* Getting data from workouts API to populate different portions of the front end.

- Our group had a meeting to touch base. We helped one teammate get her docker containers running. Then we shifted our focus on getting the login/signup pages to work and also how to get data from the workouts API to start populating different portions of the page.
- Perla and I started focusing on getting the workouts data to populate the page. However, we ran into CORS related issues which Shelen and Ting Wei also ran into on the user login portion of the page. After re-watching Curtis's video on hooks, we were able to solve this on the FastAPI side.
- During this process I also noticed that the JSON response body from the workouts API were structured incorrectly so I went and manipulated the way the JSON response was set up with some python commands.
- Next I moved onto getting the spinning wheel operational. I was able to populate the wheel with data from the fetch request, however, after spinning the wheel, the whole application re-renders which caused new errors. I realized that this was due to state related issues and the way we had our hook set up so after some tinkering I was able to get it to work. 


## July 19, 2022
Today I worked on:
* Fixing YML files so both postgres databases were working.

- Our group huddled up to try and go over YML file differences. Some teammates were able to get one to working or not
- Got everyone merged and on the same page with working backends but we are having an issue with React when teammates try to run the front-end site, we get "module not found" errors. Determined that this is due to the module that was imported for the spinning wheel having been created some time ago so that it's dependent on react version 16.8 vs the react version 18.2 that we are using. I modified the run.sh file to force the installation of the module. GHI runs. However, there's a small issue that for some reason when I import the module into app.js, I have refer to the directory as "react-wheel-of-prizes" while some teammates have to refer to it as "./react-wheel-of-prizes". One way does not work for all of us, which is a bit confusing. 


## July 18, 2022
Today I worked on:
* Getting FastAPI requests to pull data.

- I was playing a bit of catch up today since I was out on Friday for a wedding. However, my teammates had made some changes along the way while they were progressing with their respective parts of the project that they were working on and there were some changes to the YML file. I merged with the main branch and had to reconfigure some volume names and also recincorporate the build context and dockerfile for the relational-data / multiple databases.
- Once this was working, I started working on getting my FastAPI router set up. Next, I worked on FastAPI requests for the details of a specific workout by ID and a list of random workouts for guest users to spin the wheel. However, I realized that for logged in users, we want to be able to filter workouts by targeted body part / intensity / length of workout (or some combination of these 3), I needed to have a dynamic request that could accomodate 1, 2 or all 3 filters. 
- Could not get a dynamic where filter to work that would allow flexibility to allow users to enter a combination of filters so structured it so that users must enter target and intensity. Will filter length of workout on the front-end.


## July 13, 2022
Today I worked on:
* Getting FastAPI loaded into the workouts app.

- We started the day off recapping today's demonstration. 
- I will work on getting FastAPI loaded into the workouts app. 
- I worked on figuring out how to get the database to be automatically populated with an SQL file. So after some research and guidance from Zynh, I was able to do a PostgreSQL dump and create an SQL file that would automatically create the exercises table in the workout database. She also helped me get fancy and run a script that would automatically run the loading of the SQL file when a Docker container is built.


## July 12, 2022
Today I worked on:
* Trying to get docker up and running and the workouts db populated.

- We brainstormed as a group why we were having issues getting Docker up and running and looked through our code. We isolated problems one by one (specifically React related). We did google searches and compared against the tips from learn. Ultimately we were able to get it up and running successfully by reinstalling React. For some reason it said it couldn't open the index.html file in the ghi/app/public directory even though index.html was there. However, it is up and running now. Phew.
- Now that we have services up and running on Docker - I am hoping to get the database populated with the exercises so that we can poll data from it to use with the user services.
- Finally was able to get the workouts database loaded! With some guidance from Sean, Jason, Yesenia - for some reason my INSERT INTO with postgres only worked when I put it into a transaction. Not sure why, but success!
- Now I think onto getting the accounts back-end set up.


## July 11, 2022
Today I worked on:
* Trying to populate the project database with the exercises we pulled from an online API.

- As a group we started assigning tasks for the day to try and start getting the structural bones of our project in place.
- I worked on trying to get the data we imported from the exercise API into our project database. However, the data from the API did not have all the properties that we were looking to feature in our project so I had to manipulate the data.
- Since there were thousands of exercises, I realized that I did not want to add these properties manually, so I was able to do so with a for loop and by assigning random values for "intensity" and "length of workout" properties on each exercise. This was in lieu of us manually screening each one which would be done in the real world. 
- However, once I was able to successfully manipulate the data and get it into a form that worked with postgres - I had issues getting our database to load in docker. I kept getting an error "FATAL: could not open directory "pg_notify": No such file or directory". Seems like the yml file as is works for windows users but did not work for the mac users in our group.
