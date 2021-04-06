# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

s = Session.create(name: 'Chest Day 1', date:Date.today)

s2= Session.create(name: 'Leg Day 1', date:Date.tomorrow)

workout = Workout.create(name: 'Bench Press', sets: 3, reps: 10, weight: 225, session_id: 1)
workout_two= Workout.create(name: 'Pec Fly', sets: 5, reps: 8, weight: 80, session_id: 1)
workout_three=Workout.create(name: 'Back Squat', sets: 4, reps:8, weight: 245, session_id: 2)

best_one= Best.create(name: "Bench Press", weight: 275, reps:3 )
best_two= Best.create(name: "Back Squat" , weight: 310, reps:4)


inspiration_one= Inspiration.create(name: "Dwayne The Rock Johnson", image:'https://static.toiimg.com/thumb/msid-76750498,imgsize-965136,width-800,height-600,resizemode-75/76750498.jpg', bio: "From Wrestling to being a movie star, The Rock stays jacked!")