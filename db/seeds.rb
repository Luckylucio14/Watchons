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

#TEAMS

team1 = Team.create!(name: "France")
team2 = Team.create!(name: "Brasil")
team3 = Team.create!(name: "Espagne")
team4 = Team.create!(name: "Portugal")
team5 = Team.create!(name: "Cameroun")
team6 = Team.create!(name: "Angleterre")
team7 = Team.create!(name: "Belgique")
team8 = Team.create!(name: "Argentine")
team9 = Team.create!(name: "Japon")
team10 = Team.create!(name: "Ghana")
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

#EVENT TEAM

event_team1 = EventTeam.create!(event: match1, team: team2)
event_team1 = EventTeam.create!(event: match1, team: team1)
event_team2 = EventTeam.create!(event: match2, team: team3)
event_team2 = EventTeam.create!(event: match2, team: team4)
event_team3 = EventTeam.create!(event: match3, team: team5)
event_team3 = EventTeam.create!(event: match3, team: team6)
event_team4 = EventTeam.create!(event: match4, team: team7)
event_team4 = EventTeam.create!(event: match4, team: team8)
event_team5 = EventTeam.create!(event: match5, team: team9)
event_team5 = EventTeam.create!(event: match5, team: team10)

puts 'Creating Places...'
# PLACES
LaScierie = Place.create!(caracteristic:"" , adress:"3 allée de l'Ile Gloriette 44000 Nantes", name:"La Scierie", status:"Places disponibles")
file = URI.open("http://www.lesbarres.com/media/image/slideshow/a1f8f0d08556369fa82d5ce29e775387b7a713e1.jpg")
.photo.attach(io: file, filename:"LaScierie.png" content_type:"image/png")

3Brasseurs = Place.create!(caracteristic:"" , adress:"Centre Commercial Carré 19 Parvis Neptune 44000 Nantes", name:"3 Brasseurs", status:"Places disponibles")
file = URI.open("https://restaurants.3brasseurs.com/image/mobilosoft-testing?apiPath=rehab/les3brasseurs-fr/images/location/Nantes_feydeau&imageSize=h_300.jpg")
.photo.attach(io: file, filename:"3Brasseurs.png" content_type:"image/png")

LeCascabel = Place.create!(caracteristic:"" , adress:"1 Rue Kervégan 44000 Nantes", name:"Le Cascabel", status:"Places disponibles")
file = URI.open("https://www.google.com/maps/uv?pb=!1s0x4805eea588d9a5c3%3A0x714dea4f8151dd19!3m1!7e115!4shttps%3A%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipNS5uSIB_Vg6LAdM6BH96qTVFbS6QJeGaYGXI7Q%3Dw260-h175-n-k-no!5sle%20cascabel%20nantes%20-%20Buscar%20con%20Google!15sCgIgAQ&imagekey=!1e10!2sAF1QipPCmEIhZC0IewhtIpnrwRlV5ITmv1IwuErfrwwJ&hl=es&sa=X&ved=2ahUKEwi57vXewNP7AhVsTKQEHT9fCdAQ7ZgBKAB6BAgWEAI#.jpg")
.photo.attach(io: file, filename:"LeCascabel.png" content_type:"image/png")

LaBelleEquipe = Place.create!(caracteristic:"" , adress:"10 Quai de la Jonelière 44000 Nantes", name:"La belle equipe", status:"Places disponibles")
file = URI.open("https://www.lbe-nantes.fr/i/la-belle-equipe-1877-bar-restaurant-salle-eiffel-rez-de-chausse/3/4/8/1/9/0/1/5/0/2/2/8/8/1548158245_437/5880eee8b302623787de9e0207b33df8.jpg")
.photo.attach(io: file, filename:"LaBelleEquipe.png" content_type:"image/png")

Giggs = Place.create!(caracteristic:"" , adress:"4 Pl. Saint-Pierre 44000 Nantes", name:"Gigg's", status:"Places disponibles")
file = URI.open("https://cdn.schlouk-map.com/cache/gallery/uploads/images/places/giggs-irish-pub-625824ac437ab0.58323803.png")
.photo.attach(io: file, filename:"LaBelleEquipe.png" content_type:"image/png")
