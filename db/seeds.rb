# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

Article.destroy_all
puts 'Deleting old articles...'
puts 'Creating new ones...'

10.times do |_|
  title = Faker::Lorem.sentence
  content = Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)

  article = Article.new(title: title, content: content)
  puts article.save!
end
