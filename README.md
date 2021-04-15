# phase_five_project - TrainingBuddy - Backend JSON Server

TrainingBuddy is a React/Redux application with a RAILS API backend that allows a user to keep track of workout sessions and each workout that is a part of that session, their personal bests, and people who inspire them to keep training. The application uses "Thunk middleware" so that asynchronous requests can be made between the Redux store and the backend API. Users can create, view and delete data from the backend using forms, links and buttons that dispatch actions to the store. The application was styled using the "MaterialUI library", in order to make the application more aesthetically pleasing than a regular HTML application. 

This is the backend corresponding to the react-redux frontend which is available at https://github.com/Strycora/phase_five_frontend .

# Installation

 Clone the code in this repo. Then run 'rails db:create' and 'rails db:migrate', and optionally, 'rails db:seed' in the backend terminal to get it ready. Then run 'rails s' and clone the frontend which is available at https://github.com/Strycora/phase_five_frontend . In the frontend terminal, run 'npm install' and 'npm start' or 'yarn start' to boot up the frontend.  

# Usage 

Begin by clicking on the 'New Session' tab in the navbar at the top of the page. Enter a session name and date and click submit. Then click the 'Sessions' tab and a new session should appear on the screen. Click the link and enter a workout name, sets, reps and weight to begin adding workouts. Enter a Personal Best in the 'New Personal Best' tab, adding a workout name, weight, and reps in order to add it to the list of personal bests, accessible in the 'Personal Bests' tab. Click on 'Add an Inspiration' in the navbar to go to a form where you can enter the name, image URL, and bio of someone who motivates you to train. It will show up on the list in the 'My Inspirations' tab. 

# Contributing
Send an email to strycora@gmail.com if you would like to make a contribution. 

# License
[MIT](https://choosealicense.com/licenses/mit/)