# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Question.create(title: 'This is my first question: What is the best way to seed the database?',
  description: "Here's what I want to:
  1. Add some new questions
  2. Format them in markdown
  3. Display the markdown on the screen

  Probably need to make this a little bit longer. How about adding some ruby code?")

Question.create(title: 'What happens when I use different markdown formatting options?',
  description: "Can I make questions *italic* or **bold**? That would be really cool too. Can I make questions *italic* or **bold**? That would be really cool too.")
