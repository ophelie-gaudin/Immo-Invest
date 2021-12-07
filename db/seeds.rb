# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do 
  User.create(
    email: Faker::Internet.email(domain: 'yopmail'),
    password: Faker::Internet.password
  )
end

3.times do 
  Project.create(
    title: Faker::Lorem.sentence(word_count: 3),
    localization: Faker::Address.city(options: { with_state: true }),
    comment: Faker::Lorem.paragraph,
    user_id: User.all.sample.id
  )
end

5.times do 
  Housing.create(
    ad_price: Faker::Number.number(digits:6),
    property_category: Faker::String.random(length: 4),
    localization: Faker::Address.city(options: { with_state: true }),
    ad_url: Faker::Internet.url,
    project_id: Project.all.sample.id
  )
end