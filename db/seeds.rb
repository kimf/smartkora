# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Course.all.each{|c| c.delete }
Course.create(name: "Österåkers GK",      latitude: 59.4914271,  longitude: 18.25425999999993,  address:  "Österåkers Golf AB, Hagby 1:1, 184 92 Åkersberga, Sweden")
Course.create(name: "Haninge GK",         latitude: 59.1074874,  longitude: 18.19508940000003,  address:  "Golfrestaurangen Årsta Slott, Årsta slott, 137 95 Österhaninge, Sweden")
Course.create(name: "Mälarö GK",          latitude: 59.316818,   longitude: 17.670650,          address:  "Mälarö GK Skytteholm, 178 90 Ekerö, Sweden")
Course.create(name: "Kyssinge Golf",      latitude: 59.5970,     longitude: 18.0048,            address:  "Kyssinge Golf, 195 96 Rosersberg, Sweden")
Course.create(name: "Nynäshamns GK",      latitude: 59.0099286,  longitude: 17.883536899999967, address:  "Nynäshamns Golfklubb, Körunda 40, 148 91 Ösmo, Sweden")
Course.create(name: "Hagby Golf",         latitude: 59.488451,   longitude: 18.271540,          address:  "Hagby Golfklubb, Hagby 1:1, 184 92 Åkersberga, Sweden")
Course.create(name: "Bodaholm Golf",      latitude: 59.665270,   longitude: 17.750237,          address:  "Bodaholm Golfklubb, Bodarna, 741 91 Bromma, Sweden")
Course.create(name: "Fors Golf",          latitude: 59.1050392,  longitude: 18.12480060000007,  address:  "Fors Golfklubb, Vitsåvägen 2, 137 91 Västerhaninge, Sweden")
Course.create(name: "Sundsta Golf",       latitude: 59.75305,    longitude: 18.569663,          address:  "Sundsta Golf, Sundsta Säteri, 761 91 Norrtälje")
Course.create(name: 'Vallentuna GK',      latitude: 59.565118,   longitude: 18.105752,          address:  "Vallentuna Golfklubb, Vallentuna-veda 1, 186 94 Vallentuna, Sweden")
