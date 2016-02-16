# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


p1 = Player.create(name: "Dani")
p2 = Player.create(name: "Alvaro")
p3 = Player.create(name: "Pepe")

t1 = Tournament.create(name: "Champions")
t2 = Tournament.create(name: "World Cup")
t3 = Tournament.create(name: "Liga")

p1.tournaments.push(t1)
p1.tournaments.push(t2)
p2.tournaments.push(t2)
p3.tournaments.push(t3)
p3.tournaments.push(t1)