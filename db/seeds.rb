# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"
require "date"

puts 'Cleaning database...'
EventTeam.destroy_all
EventPlace.destroy_all
Event.destroy_all
Team.destroy_all
Place.destroy_all
Message.destroy_all
User.destroy_all

puts 'Creating Users...'
# USERS

william = User.create!(email:"william.wallace@gmail.com", password:"123456", nickname:"william")
file = URI.open("http://idata.over-blog.com/0/47/62/15/articles/braveheart02.jpg")
william.photo.attach(io: file, filename:"william.png", content_type:"image/png")

just = User.create!(email:"just.leblanc@gmail.com", password:"123456", nickname:"just")
file = URI.open("https://image.over-blog.com/3kvxExbDMdbVgTl-ZmbPJuWvIho=/filters:no_upscale()/image%2F0995038%2F20210423%2Fob_bd5b6a_capture-15.png")
just.photo.attach(io: file, filename:"just.png", content_type:"image/png")

lisa = User.create!(email:"lisa.plenske@gmail.com", password:"123456",nickname:"lisa" )
file = URI.open("https://static1.purebreak.com/articles/8/15/71/98/@/625978-le-destin-de-lisa-que-devient-alexandr-diapo-2.jpg")
lisa.photo.attach(io: file, filename:"lisa.png", content_type:"image/png")

laouni = User.create!(email:"laouni.mouhid@gmail.com", password:"123456", nickname:"laouni")
file = URI.open("https://www.gala.fr/imgre/fit/http.3A.2F.2Fprd2-bone-image.2Es3-website-eu-west-1.2Eamazonaws.2Ecom.2Fprismamedia_people.2F2017.2F06.2F30.2Fc699862d-dd6c-4c2d-936e-0d5acc660d4e.2Ejpeg/100x100/quality/80/la-fouine.jpg")
laouni.photo.attach(io: file, filename:"laouni.png", content_type:"image/png")

chen = User.create!(email:"chun.li@wanadoo.fr", password:"123456", nickname:"chun")
file = URI.open("https://static.wikia.nocookie.net/streetfighter/images/1/15/Chun-Li_animated_movie.png/revision/latest/scale-to-width-down/1086?cb=20180126014842")
chen.photo.attach(io: file, filename:"chen.png", content_type:"image/png")

#TEAMS

team1 = Team.create!(name: "France")
file = URI.open("https://upload.wikimedia.org/wikipedia/fr/thumb/4/43/Logo_%C3%89quipe_France_Football_2018.svg/langfr-300px-Logo_%C3%89quipe_France_Football_2018.svg.png")
team1.photo.attach(io: file, filename:"team1.png", content_type:"image/png")

team2 = Team.create!(name: "Bresil")
file = URI.open("https://conteudo.cbf.com.br/cdn/imagens/escudos_selecoes_sn/brasil_principal_masculina.png")
team2.photo.attach(io: file, filename:"team1.png", content_type:"image/png")

team3 = Team.create!(name: "Espagne")
file = URI.open("https://upload.wikimedia.org/wikipedia/fr/thumb/0/06/Logo_%C3%89quipe_Espagne_Football_-_2021.svg/langfr-800px-Logo_%C3%89quipe_Espagne_Football_-_2021.svg.png")
team3.photo.attach(io: file, filename:"team1.png", content_type:"image/png")

team4 = Team.create!(name: "Portugal")
file = URI.open("https://upload.wikimedia.org/wikipedia/fr/thumb/6/65/Football_Portugal_federation.svg/langfr-800px-Football_Portugal_federation.svg.png")
team4.photo.attach(io: file, filename:"team1.png", content_type:"image/png")

team5 = Team.create!(name: "Cameroun")
file = URI.open("https://upload.wikimedia.org/wikipedia/fr/thumb/e/e2/Logo_F%C3%A9d%C3%A9ration_Camerounaise_Football.svg/langfr-800px-Logo_F%C3%A9d%C3%A9ration_Camerounaise_Football.svg.png")
team5.photo.attach(io: file, filename:"team1.png", content_type:"image/png")

team6 = Team.create!(name: "Angleterre")
file = URI.open("https://upload.wikimedia.org/wikipedia/fr/7/79/Football_Angleterre_maillot.png")
team6.photo.attach(io: file, filename:"team1.png", content_type:"image/png")

team7 = Team.create!(name: "Belgique")
file = URI.open("https://files.slack.com/files-pri/T02NE0241-F04CV6PNQVD/langfr-800px-logo_f__d__ration_belge_football_2019.svg.png")
team7.photo.attach(io: file, filename:"team1.png", content_type:"image/png")

team8 = Team.create!(name: "Argentine")
file = URI.open("https://upload.wikimedia.org/wikipedia/en/thumb/c/c1/Argentina_national_football_team_logo.svg/800px-Argentina_national_football_team_logo.svg.png")
team8.photo.attach(io: file, filename:"team1.png", content_type:"image/png")

team9 = Team.create!(name: "Japon")
file = URI.open("https://upload.wikimedia.org/wikipedia/fr/thumb/8/84/Japan_national_football_team_crest.svg/langfr-800px-Japan_national_football_team_crest.svg.png")
team9.photo.attach(io: file, filename:"team1.png", content_type:"image/png")

team10 = Team.create!(name: "Ghana")
file = URI.open("https://upload.wikimedia.org/wikipedia/fr/thumb/4/42/Football_Ghana_federation.svg/langfr-800px-Football_Ghana_federation.svg.png")
team10.photo.attach(io: file, filename:"team1.png", content_type:"image/png")
puts 'Creating Events...'
# EVENTS
match1 = Event.create!(competition: "Coupe du Monde - Quart de finale", location: "Stade de Lusail - ", full_datetime: DateTime.new(2022,12,9, 16, 0, 0), channel: "Bein")
match2 = Event.create!(competition: "Coupe du Monde - Quart de finale", location: "Stade international de Khalifa - Qatar", full_datetime: DateTime.new(2022,12,9, 20, 0, 0), channel: "TF1")
match3 = Event.create!(competition: "Coupe du Monde - Quart de finale", location: "Stade de Lusail - Qatar", full_datetime: DateTime.new(2022,12,10, 16, 0, 0), channel: "Bein")
match4 = Event.create!(competition: "Coupe du Monde - Quart de finale", location: "Stade 974 - Qatar", full_datetime: DateTime.new(2022,12,10, 20, 0, 0), channel: "TF1")
match5 = Event.create!(competition: "Coupe du Monde - Demi-finale", location: "Stade Al-Thumama - Qatar", full_datetime: DateTime.new(2022,12,13, 20, 0, 0), channel: "Bein")
match6 = Event.create!(competition: "Coupe du Monde - Demi-finale", location: "Stade Al-Bayt - Qatar", full_datetime: DateTime.new(2022,12,14, 20, 0, 0), channel: "TF1")
match7 = Event.create!(competition: "Coupe du Monde - 3ème place", location: "Stade Education City - Qatar", full_datetime: DateTime.new(2022,12,17, 16, 0, 0), channel: "Bein")
match8 = Event.create!(competition: "Coupe du Monde - Finale", location: "Stade Al-Bayt - Qatar", full_datetime: DateTime.new(2022,12,18, 16, 0, 0), channel: "TF1")
match9 = Event.create!(competition: "Ligue 1", location: "Stade de l'Aube - Troyes", full_datetime: DateTime.new(2022,12,28, 18, 0, 0), channel: "Primevideo")
match10 = Event.create!(competition: "Ligue 1", location: "Parc des princes - Paris", full_datetime: DateTime.new(2022,12,28, 21, 0, 0), channel: "Primevideo")

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

event_team6 = EventTeam.create!(event: match6, team: team2)
event_team6 = EventTeam.create!(event: match6, team: team1)
event_team7 = EventTeam.create!(event: match7, team: team3)
event_team7 = EventTeam.create!(event: match7, team: team4)
event_team8 = EventTeam.create!(event: match8, team: team5)
event_team8 = EventTeam.create!(event: match8, team: team6)
event_team9 = EventTeam.create!(event: match9, team: team7)
event_team9 = EventTeam.create!(event: match9, team: team8)
event_team10 = EventTeam.create!(event: match10, team: team9)
event_team10 = EventTeam.create!(event: match10, team: team10)

puts 'Creating Places...'
# PLACES

LaScierie = Place.create!(characteristic: "Venez coupez votre quotidien en rejoignant un lieu de partage", address: "3 allée de l'Ile Gloriette", city: "44000 Nantes", name:"La Scierie", status:"Places disponibles Viens,tu verras comment on est bien!")
file = URI.open("http://www.lesbarres.com/media/image/slideshow/a1f8f0d08556369fa82d5ce29e775387b7a713e1.jpg")
LaScierie.photo.attach(io: file, filename: "LaScierie.png", content_type: "image/png")

Brasseurs = Place.create!(characteristic: "Une cuisine authentique dans l'esprit des anciennes brasseries. De moments généreux et conviviaux à déguster", address: "C.C Carré 19 Parvis Neptune", city: "44000 Nantes", name:"3 Brasseurs", status:"Places disponibles")
file = URI.open("https://i.ytimg.com/vi/CblVTS5fTFE/maxresdefault.jpg")
Brasseurs.photo.attach(io: file, filename: "Brasseurs.png", content_type: "image/png")

LeCascabel = Place.create!(characteristic: "Une belle cascade de joie vous y attend", address: "1 Rue Kervégan", city: "44000 Nantes", name:"Le Cascabel", status:"Complet")
file = URI.open("https://www.google.com/maps/uv?pb=!1s0x4805eea588d9a5c3%3A0x714dea4f8151dd19!3m1!7e115!4shttps%3A%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipNS5uSIB_Vg6LAdM6BH96qTVFbS6QJeGaYGXI7Q%3Dw260-h175-n-k-no!5sle%20cascabel%20nantes%20-%20Buscar%20con%20Google!15sCgIgAQ&imagekey=!1e10!2sAF1QipPCmEIhZC0IewhtIpnrwRlV5ITmv1IwuErfrwwJ&hl=es&sa=X&ved=2ahUKEwi57vXewNP7AhVsTKQEHT9fCdAQ7ZgBKAB6BAgWEAI#.jpg")
LeCascabel.photo.attach(io: file, filename: "LeCascabel.png", content_type: "image/png")

LaBelleEquipe = Place.create!(characteristic: "L'esprit d'équipe que l'on perde ou que l'on gagne",  address: "10 Quai de la Jonelière", city:"44000 Nantes", name:"La belle equipe", status:"Complet")
file = URI.open("https://www.lbe-nantes.fr/i/la-belle-equipe-1877-bar-restaurant-salle-eiffel-rez-de-chausse/3/4/8/1/9/0/1/5/0/2/2/8/8/1548158245_437/5880eee8b302623787de9e0207b33df8.jpg")
LaBelleEquipe.photo.attach(io: file, filename: "LaBelleEquipe.png", content_type: "image/png")

Giggs = Place.create!(characteristic: "Un match ne se joue pas que sur la pelouse", address: "4 Place Saint-Pierre", city: "44000 Nantes", name:"Gigg's", status:"Places disponibles")
file = URI.open("https://cdn.schlouk-map.com/cache/gallery/uploads/images/places/giggs-irish-pub-625824ac437ab0.58323803.png")
Giggs.photo.attach(io: file, filename: "LaBelleEquipe.png", content_type: "image/png")

brady = Place.create!(characteristic: "Près du lieu unique, l'ambiance irlandaise à porter de chope", address: "22 Allée Commandant Charcot", city: "44000 Nantes", name:"Brady's", status:"Quelques places")
file = URI.open("https://cdn.schlouk-map.com/cache/gallery/uploads/images/places/bradys-62582df31d8dd1.32689537.png")
brady.photo.attach(io: file, filename: "brady.png", content_type: "image/png")

macbyrne = Place.create!(characteristic: "Il n'y a pas qu'en irlande qu'on sait savourer un moment de partage autour d'une pinte", address: "21 Rue des Petites Écuries", city: "44000 Nantes", name:"John McByrne", status:"Quelques places")
file = URI.open("https://fastly.4sqi.net/img/general/200x200/11116385_IN7iNR-dN1fQVnDLeOr-HautP4K0lpUP0E5rxduaGGY.jpg")
macbyrne.photo.attach(io: file, filename: "macbyrne.png", content_type: "image/png")

berlin = Place.create!(characteristic: "Lieu de rencontre et de partage reconnu Quoi vous ne connaissez pas ? On vous attend pour vous montrer",  address: "95 Boulevard Gabriel Lauriol", city: "44300 Nantes", name:"Berlin 1989", status:"places disponibles")
file = URI.open("https://mvistatic.com/etablissements/2018-05/16163_crop_640-270_.jpg")
berlin.photo.attach(io: file, filename: "berlin.png", content_type: "image/png")

lab = Place.create!(characteristic: "En navibus, voiture, vélo, à pieds ou à cheval, tous les chemin mène au LAB", address: "23 Boulevard de Chantenay", city: "44100 Nantes", name:"Little Atlantique Brewery", status:"Complet")
file = URI.open("https://uploads.lebonbon.fr/source/2020/june/2008827/little-atlantique-brewery-nantes_2_400.jpg")
lab.photo.attach(io: file, filename: "lab.png", content_type: "image/png")

bureau = Place.create!(characteristic: "Quoi de mieux que de se retrouver au bureau après une journée de travail ?", address: "10 Quai François Mitterrand", city: "44000 Nantes", name:"Au Bureau", status:"Quelques places")
file = URI.open("https://static.actu.fr/uploads/2019/05/55557220_1846310605475174_2848458684785229824_o.jpg")
bureau.photo.attach(io: file, filename: "bureau.png", content_type: "image/png")

event_place1 = EventPlace.create!(event: match1, place: LaScierie)
event_place2 = EventPlace.create!(event: match2, place: Brasseurs)
event_place3 = EventPlace.create!(event: match3, place: LeCascabel)
event_place4 = EventPlace.create!(event: match4, place: LaBelleEquipe)
event_place5 = EventPlace.create!(event: match5, place: Giggs)
event_place6 = EventPlace.create!(event: match6, place: brady)
event_place7 = EventPlace.create!(event: match7, place: macbyrne)
event_place8 = EventPlace.create!(event: match8, place: berlin)
event_place9 = EventPlace.create!(event: match9, place: lab)
event_place10 = EventPlace.create!(event: match10, place: bureau)

event_place11 = EventPlace.create!(event: match10, place: LaScierie)
event_place12 = EventPlace.create!(event: match9, place: Brasseurs)
event_place13 = EventPlace.create!(event: match8, place: LeCascabel)
event_place14 = EventPlace.create!(event: match7, place: LaBelleEquipe)
event_place15 = EventPlace.create!(event: match6, place: Giggs)
event_place16 = EventPlace.create!(event: match5, place: brady)
event_place17 = EventPlace.create!(event: match4, place: macbyrne)
event_place18 = EventPlace.create!(event: match3, place: berlin)
event_place19 = EventPlace.create!(event: match2, place: lab)
event_place20 = EventPlace.create!(event: match1, place: bureau)

event_place21 = EventPlace.create!(event: match2, place: LaScierie)
event_place22 = EventPlace.create!(event: match3, place: Brasseurs)
event_place23 = EventPlace.create!(event: match4, place: LeCascabel)
event_place24 = EventPlace.create!(event: match5, place: LaBelleEquipe)
event_place25 = EventPlace.create!(event: match10, place: Giggs)
event_place26 = EventPlace.create!(event: match7, place: brady)
event_place27 = EventPlace.create!(event: match8, place: macbyrne)
event_place28 = EventPlace.create!(event: match6, place: berlin)
event_place29 = EventPlace.create!(event: match1, place: lab)
event_place30 = EventPlace.create!(event: match9, place: bureau)

event_place31 = EventPlace.create!(event: match3, place: LaScierie)
event_place32 = EventPlace.create!(event: match4, place: Brasseurs)
event_place33 = EventPlace.create!(event: match5, place: LeCascabel)
event_place34 = EventPlace.create!(event: match6, place: LaBelleEquipe)
event_place35 = EventPlace.create!(event: match7, place: Giggs)
event_place36 = EventPlace.create!(event: match8, place: brady)
event_place37 = EventPlace.create!(event: match9, place: macbyrne)
event_place38 = EventPlace.create!(event: match1, place: berlin)
event_place39 = EventPlace.create!(event: match10, place: lab)
event_place40 = EventPlace.create!(event: match2, place: bureau)

event_place41 = EventPlace.create!(event: match9, place: LaScierie)
event_place42 = EventPlace.create!(event: match5, place: Brasseurs)
event_place43 = EventPlace.create!(event: match10, place: LeCascabel)
event_place44 = EventPlace.create!(event: match3, place: LaBelleEquipe)
event_place45 = EventPlace.create!(event: match8, place: Giggs)
event_place46 = EventPlace.create!(event: match2, place: brady)
event_place47 = EventPlace.create!(event: match1, place: macbyrne)
event_place48 = EventPlace.create!(event: match4, place: berlin)
event_place49 = EventPlace.create!(event: match6, place: lab)
event_place50 = EventPlace.create!(event: match7, place: bureau)


Chatroom.create(name: "LaScierie", place: LaScierie)
Chatroom.create(name: "Brasseurs", place: Brasseurs)
Chatroom.create(name: "LeCascabel", place: LeCascabel)
Chatroom.create(name: "LaBelleEquipe", place: LaBelleEquipe)
Chatroom.create(name: "Giggs", place: Giggs)
Chatroom.create(name: "brady", place: brady)
Chatroom.create(name: "macbyrne", place: macbyrne)
Chatroom.create(name: "berlin", place: berlin)
Chatroom.create(name: "lab", place: lab)
Chatroom.create(name: "bureau", place: bureau)
Chatroom.create(name: "Général")
