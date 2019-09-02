# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
require 'xkcd'

 Item.destroy_all

 items = []

#title, description, price, image_url
 20.times do
 	items << Item.create!(title: Faker::Creature::Cat.breed, description: Faker::Dessert.flavor, price: Faker::Number.decimal(l_digits: 2))
 	#for Item.title.each do
 	#	items << Item.create!(image_url:title XKCD.search)
 	#end
 end
 
