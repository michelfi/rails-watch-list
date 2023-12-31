# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

10.times do
  Movie.create!(title: Faker::Movie.title, overview: Faker::Lorem.paragraph(sentence_count: 4), poster_url: Faker::LoremFlickr.image(size: "50x60", search_terms: ['movies']), rating: rand(1.0..10.0))
end
