# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
News.destroy_all
admin_user = User.create(email: "example@admin.com", password: "123", password_confirmation: "123", admin: true)
normal_user = User.create(email: "example@normal.com", password: "123", password_confirmation: "123", admin: false)

10.times do
  News.create(title:Faker::Name.title, body:Faker::Hipster.sentences, user: admin_user)
end

10.times do
  News.create(title:Faker::Name.title, body:Faker::Hipster.sentences, user: normal_user)
end
