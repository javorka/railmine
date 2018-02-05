# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

admin = User.create(name: 'Admin', password: 'admin', email: 'admin@railmine.com', role: 1)
projects = Project.create([
  {
      name: 'Ruby project',
      description: 'Sample project in Ruby on Rails'
  }, {
      name: 'Java project',
      description: 'Sample project in SpringBoot'
  }, {
      name: 'JavaScript project',
      description: 'Sample project in Node JS'
  }
])