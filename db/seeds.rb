# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


u1 = User.create(username: "griffin", password:"ayyy")

j1 = Job.create(title: "Software Dev", company: "Youtube", post_date: Time.now, description: "Do stuff with video things")
j2 = Job.create(title: "Software Eng", company: "Google", post_date: Time.now, description: "Search Functions")
j3 = Job.create(title: "Food Maker", company: "Chipotle", post_date: Time.now, description: "Make food for hungry people")
j4 = Job.create(title: "Food Eater", company: "McDonalds", post_date: Time.now, description: "Take food from hungry people")

js1 = JobState.create(status: "applying", job_id: j1.id, user_id: u1.id)
js2 = JobState.create(status: "hired", job_id: j3.id, user_id: u1.id)