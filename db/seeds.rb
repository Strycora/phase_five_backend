# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

s = Session.create(name: 'Chest Day 1', date:Date.today)

workout = Workout.create(name: 'Bench Press', sets: 3, reps: 10, weight: 225, session_id: 1)
workout_two= Workout.create(name: 'Pec Fly', sets: 5, reps: 8, weight: 80, session_id: 1)