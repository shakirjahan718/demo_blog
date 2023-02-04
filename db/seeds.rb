# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(email: "shakir@example.com", password: "password", password_confirmation: "password")

10.times do |x|
  Post.create! title: "Title #{x + 1}", body: "Body of post #{x + 1}", user_id: User.first.id
end
