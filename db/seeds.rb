# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'


(1..5).each do |id|
    Movie.create!(
        name: Faker::Movie.unique.title,
        synopsis: Faker::Quote.yoda,
        director: Faker::Name.unique.name
    )
end
(1..5).each do |id|
    Documentary.create!(
        name: Faker::Movie.unique.title,
        synopsis: Faker::Quote.yoda,
        director: Faker::Name.unique.name
    )
end
(1..5).each do |id|
    Series.create!(
        name: Faker::Movie.unique.title,
        synopsis: Faker::Quote.yoda,
        director: Faker::Name.unique.name
    )
end