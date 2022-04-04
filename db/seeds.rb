# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p 'Destroying all seeds....'

Task.destroy_all

Task.create(title: 'Complete homework', completed: false, details: "do exercise 3 to 7 from the Trig chapter")
Task.create(title: 'Go to the gym', completed: false, details: "Today is chest day")
Task.create(title: 'Prep for meeting', completed: false, details: "Review data and logistics prior to meeting")
Task.create(title: 'Go Surfing', completed: false, details: "You have surfing with Dave planned this afternoon")

p "#{Task.count} tasks have been created"
