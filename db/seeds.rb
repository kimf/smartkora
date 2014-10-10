# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Course.all.each{|c| c.delete }

#SMARTGOLFA
Course.create(name: "Österåkers GK",      provider: 'smartgolfa', latitude: 59.4914271,  longitude: 18.25425999999993,  address:  "Österåkers Golf AB, Hagby 1:1, 184 92 Åkersberga, Sweden",               weather_link: "http://www.golfvader.nu/%C3%B6ster%C3%A5kers-gk/10d/yr-smhi")
Course.create(name: "Haninge GK",         provider: 'smartgolfa', latitude: 59.1074874,  longitude: 18.19508940000003,  address:  "Golfrestaurangen Årsta Slott, Årsta slott, 137 95 Österhaninge, Sweden", weather_link: "http://www.golfvader.nu/haninge-gk/10d/yr-smhi")
Course.create(name: "Mälarö GK",          provider: 'smartgolfa', latitude: 59.316818,   longitude: 17.670650,          address:  "Mälarö GK Skytteholm, 178 90 Ekerö, Sweden",                             weather_link: "http://www.golfvader.nu/m%C3%A4lar%C3%B6-gk-skytteholm/10d/yr-smhi")
Course.create(name: "Hagby Golf",         provider: 'smartgolfa', latitude: 59.488451,   longitude: 18.271540,          address:  "Hagby Golfklubb, Hagby 1:1, 184 92 Åkersberga, Sweden",                  weather_link: "http://www.golfvader.nu/hagby-gk/10d/yr-smhi")
Course.create(name: "Bodaholm Golf",      provider: 'smartgolfa', latitude: 59.665270,   longitude: 17.750237,          address:  "Bodaholm Golfklubb, Bodarna, 741 91 Bromma, Sweden",                     weather_link: "http://www.golfvader.nu/bj%C3%B6rklidens-gk/10d/yr-smhi")
Course.create(name: "Fors Golf",          provider: 'smartgolfa', latitude: 59.1050392,  longitude: 18.12480060000007,  address:  "Fors Golfklubb, Vitsåvägen 2, 137 91 Västerhaninge, Sweden",             weather_link: "http://www.golfvader.nu/fors-gk/10d/yr-smhi")
Course.create(name: "Sundsta Golf",       provider: 'smartgolfa', latitude: 59.75305,    longitude: 18.569663,          address:  "Sundsta Golf, Sundsta Säteri, 761 91 Norrtälje",                         weather_link: "")
Course.create(name: 'Vallentuna GK',      provider: 'smartgolfa', latitude: 59.565118,   longitude: 18.105752,          address:  "Vallentuna Golfklubb, Vallentuna-veda 1, 186 94 Vallentuna, Sweden",     weather_link: "http://www.golfvader.nu/vallentuna-gk/10d/yr-smhi")
Course.create(name: "Nynäshamns GK",      provider: 'smartgolfa', latitude: 59.0099286,  longitude: 17.883536899999967, address:  "Nynäshamns Golfklubb, Körunda 40, 148 91 Ösmo, Sweden",                  weather_link: "http://www.golfvader.nu/nyn%C3%A4shamns-gk/10d/yr-smhi")

#BOTH
Course.create(name: "Kyssinge Golf",      provider: 'both',       latitude: 59.5970,     longitude: 18.0048,            address:  "Kyssinge Golf, 195 96 Rosersberg, Sweden",                               weather_link: "http://www.golfvader.nu/kyssinge-gk-ab/10d/yr-smhi")

#UNIPEG
Course.create(name: "Lindö GK",           provider: 'unipeg',   latitude: 59.554836,   longitude: 18.031316,   address: "Lindövägen 1, 186 92 Vallentuna, Sweden",       weather_link: "http://www.golfvader.nu/lind%C3%B6-gk/10d/yr-smhi")
Course.create(name: "Lövsättra",          provider: 'unipeg',   latitude: 59.606137,   longitude: 18.330490,   address: "Sandviksvägen 4E, 186 97 Brottby, Sweden",      weather_link: "http://www.golfvader.nu/brollsta-gk/10d/yr-smhi")
Course.create(name: "Riksten",            provider: 'unipeg',   latitude: 59.169804,   longitude: 17.927472,   address: "Rikstens Säteri Hasselbacken 1146 33 Tullinge", weather_link: "http://www.golfvader.nu/riksten/10d/yr-smhi")
Course.create(name: "Waxholms GK",        provider: 'unipeg',   latitude: 59.3927923,  longitude: 18.2731166,  address: "Askrikevägen Bogesund 185 93 Vaxholm",          weather_link: "http://www.golfvader.nu/waxholms-gk/10d/yr-smhi")
Course.create(name: "Viksbergs GK",       provider: 'unipeg',   latitude: 59.245907,   longitude: 17.632641,   address: "Ladviksvägen 13 152 95 Södertälje",             weather_link: "http://www.golfvader.nu/viksbergs-gk/10d/yr-smhi")