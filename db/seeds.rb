# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

10.times do
  movie = Movie.new(title: Faker::Hipster.sentence(word_count: 3),
  overview: Faker::Movie.quote,
  rating: Faker::Number.decimal(l_digits: 1, r_digits: 1),
  )
  url = 'https://source.unsplash.com/random?' + movie.title
  movie.poster_url = url
  if movie.save
    puts "#{movie.title} saved with #{movie.poster_url}"
  else
    puts "something went wrong"
  end
end
