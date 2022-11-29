# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

puts 'Cleaning database...'
Place.destroy_all
Event.destroy_all
Match.destroy_all

puts 'Creating Users...'
# USERS

Anakin = User.create!(competition:"", localisation:"", heure:"", date:"", channel:"")
Anakin.photo.attach(io: )


puts 'Creating Events...'
# EVENTS
match1 = Match.create!(competition:"", localisation:"", heure:"", date:"", channel:"")
match1 = Match.create!(competition:"", localisation:"", heure:"", date:"", channel:"")
match1 = Match.create!(competition:"", localisation:"", heure:"", date:"", channel:"")
match1 = Match.create!(competition:"", localisation:"", heure:"", date:"", channel:"")
match1 = Match.create!(competition:"", localisation:"", heure:"", date:"", channel:"")
match1 = Match.create!(competition:"", localisation:"", heure:"", date:"", channel:"")
match1 = Match.create!(competition:"", localisation:"", heure:"", date:"", channel:"")
match1 = Match.create!(competition:"", localisation:"", heure:"", date:"", channel:"")
match1 = Match.create!(competition:"", localisation:"", heure:"", date:"", channel:"")
match1 = Match.create!(competition:"", localisation:"", heure:"", date:"", channel:"")


puts 'Creating Places...'
# PLACES
