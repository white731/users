# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do
    user = User.create(
    full_name: Faker::Name.name,
    age: rand(18...75),
    gender: Faker::Gender.binary_type,
    alive: rand(2).odd? ? true : false
    )
        num_kids = rand(1...5)
        names = [
            Faker::FunnyName.name,
            Faker::FunnyName.name,
            Faker::FunnyName.name,
            Faker::FunnyName.name,
            Faker::FunnyName.name,
        ]

        num_kids.times do |i|
                user.children.create(name: names[i])
        end

end

