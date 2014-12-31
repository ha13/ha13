# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
99.times do|n|
  name = "name00#{n}"
  email = "ex00#{n}@railstut.org"
  password = "123"
  User.create!(name: name,
               email: email,
               password: password,
               password_confirmation: password,
               admin: true)
end