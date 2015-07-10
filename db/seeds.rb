# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Event.delete_all

5.times do 
  User.create(
    name: Faker::Name.name, 
    email: Faker::Internet.email,
    password: "123456"
    )

  Event.create(
    name: Faker::Name.title,
    date: Time.now,
    details: Faker::Lorem.sentence
    )
end

User.first.events << Event.first