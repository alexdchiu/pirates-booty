The date of the entry
A list of features/issues that you worked on and who you worked with, if applicable
A reflection on any design conversations that you had
At least one ah-ha! moment that you had during your coding, however small

Keep your journal in reverse chronological order. Always put new entries at the top.


## July 22, 2022
* Getting login auth to work.

- Vivian was fortunately able to flag Curtis who dropped in to help provide some guidance. We had an issue because we did not know that DJango required a specific create_user method vs create which would encrypt passwords. Once he pointed this out, we were able to get instances of users


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
