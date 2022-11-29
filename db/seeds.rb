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
Team.destroy_all

puts 'Creating Users...'
# USERS

Anakin = User.create!(competition:"", localisation:"", heure:"", date:"", channel:"")
Anakin.photo.attach(io: )


puts 'Creating Events...'
# EVENTS
match1 = Event.create!(competition: "Coupe du monde 2022 - Quarts de finale", location: "Stade de Lusail - Qatar", hour: "16h00", date: "09/12/2022", channel: "Being")
match2 = Event.create!(competition: "Coupe du monde 2022 - Quarts de finale", location: "Stade international de Khalifa - Qatar", hour: "20h00", date: "09/12/2022", channel: "TF1")
match3 = Event.create!(competition: "Coupe du monde 2022 - Quarts de finale", location: "Stade de Lusail - Qatar", hour: "16H00", date: "10/12/2022", channel: "Being")
match4 = Event.create!(competition: "Coupe du monde 2022 - Quarts de finale", location: "Stade 974 - Qatar", hour: "20H00", date: "10/12/2022", channel: "TF1")
match5 = Event.create!(competition: "Coupe du monde 2022 - Demi-finales", location: "Stade Al-Thumama - Qatar", hour: "20h00", date: "13/12/2022", channel: "Being")
match6 = Event.create!(competition: "Coupe du monde 2022 - Demi-finales", location: "Stade Al-Bayt - Qatar", hour: "20h00", date: "14/12/2022", channel: "TF1")
match7 = Event.create!(competition: "Coupe du monde 2022 - Match pour la 3e place", location: "Stade Education City - Qatar", hour: "16h00", date: "17/12/2022", channel: "Being")
match8 = Event.create!(competition: "Coupe du monde 2022 - Finale", location: "Stade Al-Bayt - Qatar", hour: "16h00", date: "18/12/2022", channel: "TF1")
match9 = Event.create!(competition: "Ligue 1", location: "Stade de l'Aube - Troyes", hour: "15h00", date: "28/12/2022", channel: "Primevideo")
match10 = Event.create!(competition: "Ligue 1", location: "Parc des princes - Paris", hour: "21h00", date: "28/12/2022", channel: "Primevideo")

#TEAMS

team1 = Team.create!(name: "")
team1 = Team.create!(name: "")
team1 = Team.create!(name: "")
team1 = Team.create!(name: "")



puts 'Creating Places...'
# PLACES
