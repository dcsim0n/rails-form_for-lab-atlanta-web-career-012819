# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Student.create(first_name:"Dana", last_name: "Simmons")
Student.create(first_name:"Jane", last_name: "Doe")
Student.create(first_name:"Anne", last_name: "Hathaway")

SchoolClass.create(title:"Learning Fundamentals", room_number:200)
SchoolClass.create(title:"Learning 3000", room_number:201)
SchoolClass.create(title:"Multi-Variable Calculus", room_number:42)