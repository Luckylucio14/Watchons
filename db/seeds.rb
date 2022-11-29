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
Event.destroy_al= Event.destroy_allgit 

puts 'Creating Users...'
# USERS

william = User.create!(first_name:"William", last_name:"Wallace", email:"william.wallace@gmail.com", password:"123456")
file = URI.open(http://idata.over-blog.com/0/47/62/15/articles/braveheart02.jpg)
william.photo.attach(io: file filename:"william.png" content_type:"image/png")

just = User.create!(first_name:"Just", last_name:"Leblanc", email:"just.leblanc@gmail.com", password:"123456")
file = URI.open(https://image.over-blog.com/3kvxExbDMdbVgTl-ZmbPJuWvIho=/filters:no_upscale()/image%2F0995038%2F20210423%2Fob_bd5b6a_capture-15.png)
just.photo.attach(io: file filename:"just.png" content_type:"image/png")

lisa = User.create!(first_name:"Lisa", last_name:"Plenske", email:"lisa.plenske@gmail.com", password:"")
file = URI.open(https://static1.purebreak.com/articles/8/15/71/98/@/625978-le-destin-de-lisa-que-devient-alexandr-diapo-2.jpg)
lisa.photo.attach(io: file filename:"lisa.png" content_type:"image/png")

laouni = User.create!(first_name:"Laouni", last_name:"Mouhid", email:"laouni.mouhid@gmail.com", password:"123456")
file = URI.open(https://www.gala.fr/imgre/fit/http.3A.2F.2Fprd2-bone-image.2Es3-website-eu-west-1.2Eamazonaws.2Ecom.2Fprismamedia_people.2F2017.2F06.2F30.2Fc699862d-dd6c-4c2d-936e-0d5acc660d4e.2Ejpeg/100x100/quality/80/la-fouine.jpg)
laouni.photo.attach(io: file filename:"laouni.png" content_type:"image/png")

chen = User.create!(first_name:"Chen", last_name:"Li", email:"chun.li@wanadoo.fr", password:"123456")
file = URI.open(https://static.wikia.nocookie.net/streetfighter/images/1/15/Chun-Li_animated_movie.png/revision/latest/scale-to-width-down/1086?cb=20180126014842)
chen.photo.attach(io: file filename:"chen.png" content_type:"image/png")

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