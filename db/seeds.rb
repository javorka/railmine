# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

admin = User.create(name: 'Admin', password: 'admin', email: 'admin@railmine.com', role: 0)
workers = User.create [
  { name: 'Worker 1', password: 'worker', email: 'worker@railmine.com', role: 1 },
  { name: 'Worker 2', password: 'worker', email: 'worker@railmine.com', role: 1 },
  { name: 'Worker 3', password: 'worker', email: 'worker@railmine.com', role: 1 },
  { name: 'Worker 4', password: 'worker', email: 'worker@railmine.com', role: 1 },
  { name: 'Worker 5', password: 'worker', email: 'worker@railmine.com', role: 1 },
  { name: 'Worker 6', password: 'worker', email: 'worker@railmine.com', role: 1 },
  { name: 'Worker 7', password: 'worker', email: 'worker@railmine.com', role: 1 },
  { name: 'Worker 8', password: 'worker', email: 'worker@railmine.com', role: 1 }
]

teams = Team.create [
  { name: 'Admin team', users: [admin] },
  { name: 'Java team', users: workers.slice(0..3) },
  { name: 'Ruby team', users: workers.slice(4..7) }
]

projects = Project.create [
  { name: 'Ruby project', description: 'Sample project in Ruby on Rails', team: teams[2] },
  { name: 'Java project', description: 'Sample project in SpringBoot', team: teams[1] },
  { name: 'JavaScript project', description: 'Sample project in Node JS' }
]

sprints = Sprint.create [
  { name: 'Sprint 1', from: Date.parse('31.12.2017'), to: Date.parse('14.1.2018'), project: projects[0] },
  { name: 'Sprint 2', from: Date.parse('15.1.2018'), to: Date.parse('29.1.2018'), project: projects[0] },
  { name: 'Sprint 3', from: Date.parse('30.1.2018'), to: Date.parse('14.2.2018'), project: projects[0] },
  { name: 'Sprint 1', from: Date.parse('31.12.2017'), to: Date.parse('14.1.2018'), project: projects[1] },
  { name: 'Sprint 1', from: Date.parse('31.12.2017'), to: Date.parse('14.1.2018'), project: projects[2] }
]

isseus = Issue.create [
  { name: 'Missing button', description: 'Somewhere on the page is missing some button', estimation: 8, project: projects[0], user: admin },
  { name: 'Missing button', description: 'Somewhere on the page is missing some button', estimation: 8, project: projects[0], user: admin },
  { name: 'Missing button', description: 'Somewhere on the page is missing some button', estimation: 8, project: projects[0], user: admin },
  { name: 'Missing button', description: 'Somewhere on the page is missing some button', estimation: 8, project: projects[1], user: admin },
  { name: 'Missing button', description: 'Somewhere on the page is missing some button', estimation: 8, project: projects[1], user: admin },
  { name: 'Missing button', description: 'Somewhere on the page is missing some button', estimation: 8, project: projects[1], user: admin },
  { name: 'Missing button', description: 'Somewhere on the page is missing some button', estimation: 8, project: projects[2], user: admin },
  { name: 'Missing button', description: 'Somewhere on the page is missing some button', estimation: 8, project: projects[2], user: admin },
  { name: 'Missing button', description: 'Somewhere on the page is missing some button', estimation: 8, project: projects[2], user: admin },
]