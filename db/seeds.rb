# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  User.create!({email: 'guest@gmail.com', password: 'password', username: 'l3iodeez'})

  5.times do |i|
    Cat.create(name: "cat#{i+1}", race:"raceofcat#{i+1}", catClasses: [{class: "Bard", level: i+1},{class: "Rogue", level: i+2}])
  end
