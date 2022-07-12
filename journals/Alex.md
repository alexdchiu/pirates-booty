The date of the entry
A list of features/issues that you worked on and who you worked with, if applicable
A reflection on any design conversations that you had
At least one ah-ha! moment that you had during your coding, however small

Keep your journal in reverse chronological order. Always put new entries at the top.

## July 11, 2022
Today I worked on:
* Trying to populate the project database with the exercises we pulled from an online API.

- As a group we started assigning tasks for the day to try and start getting the structural bones of our project in place.
- I worked on trying to get the data we imported from the exercise API into our project database. However, the data from the API did not have all the properties that we were looking to feature in our project so I had to manipulate the data.
- Since there were thousands of exercises, I realized that I did not want to add these properties manually, so I was able to do so with a for loop and by assigning random values for "intensity" and "length of workout" properties on each exercise. This was in lieu of us manually screening each one which would be done in the real world. 
- However, once I was able to successfully manipulate the data and get it into a form that worked with postgres - I had issues getting our database to load in docker. I kept getting an error "FATAL: could not open directory "pg_notify": No such file or directory". Seems like the yml file as is works for windows users but did not work for the mac users in our group.
