# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Dir[File.join(Rails.root, 'db', 'seeds', '*.rb')].sort.each { |seed| load seed }

# 10.times do |i|
#     Wine.create!(name: "vino #{i+1}")
#     puts "Vino #{i+1}"
# end

# 10.times do |i|
#     Strain.create!(name: "Cepa #{i+1}")
#     puts "Cepa #{i+1}"
# end