# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
pouj = Wine.create(wine: "Chateau Poujeaux", region: "Moulis-en-Medoc Bordeaux", country: "France", year: 1998, opened: true, price: 110, image: "https://i.imgur.com/Hnlo6p8h.png")

pomy = Wine.create(wine: "Chateau Pomys", region: "Saint Estephe Bordeaux", country: "France", year: 2000, opened: false, price: 40, image: "https://i.imgur.com/eMomluMh.png")

clerc = Wine.create(wine: "Chateau Clerc Milon Grand Cru Classe ", region: "Pauillac", country: "France", year: 1996, opened: false, price: 160, image: "https://i.imgur.com/KpQ94tnh.png")


pouj.comments.create(name: "MUR", comment: "vivino -$110. 4.0 rating.")
pouj.comments.create(name: "MUR", comment: "Very good bouquet. earthy/dry finish. Above average . Decanted for 1+ hour.")


pomy.comments.create(name: "MUR", comment: "Vivino - $40. 3.7 rating")

clerc.comments.create(name: "MUR", comment: "Vivino - $160  4.2 rating")