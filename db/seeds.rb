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
  { name: 'Ruby team', users: workers.slice(4..7) },
  { name: 'JavaScript team', users: workers.slice(2..4) }
]

projects = Project.create [
  { name: 'Ruby project', status: 0, description: 'Sample project in Ruby on Rails', team: teams[2] },
  { name: 'Java project', status: 0, description: 'Sample project in SpringBoot', team: teams[1] },
  { name: 'JavaScript project', status: 2, description: 'Sample project in Node JS', team: teams[3] }
]

sprints = Sprint.create [
  { name: 'Sprint 1', from: Date.parse('31.12.2017'), to: Date.parse('14.1.2018'), project: projects[0] },
  { name: 'Sprint 2', from: Date.parse('15.1.2018'), to: Date.parse('29.1.2018'), project: projects[0] },
  { name: 'Sprint 3', from: Date.parse('30.1.2018'), to: Date.parse('14.2.2018'), project: projects[0] },
  { name: 'Sprint 1', from: Date.parse('31.12.2017'), to: Date.parse('14.1.2018'), project: projects[1] },
  { name: 'Sprint 2', from: Date.parse('15.1.2018'), to: Date.parse('29.1.2018'), project: projects[1] },
  { name: 'Sprint 1', from: Date.parse('31.12.2017'), to: Date.parse('14.1.2018'), project: projects[2] }
]

issues = Issue.create [
  {
    name: 'Issue 1',
    issue_type: 0,
    state: 0,
    description: 'Somewhere on the page is something missing and this is the best and the most accurate description you can get',
    estimation: 8,
    project: projects[0],
    user: workers[0],
    sprint: sprints[0]
  },
  {
    name: 'Issue 2',
    issue_type: 0,
    state: 0,
    description: 'Somewhere on the page is something missing and this is the best and the most accurate description you can get',
    estimation: 8,
    project: projects[0],
    user: workers[3],
    sprint: sprints[0]
  },
  {
    name: 'Issue 3',
    issue_type: 1,
    state: 2,
    description: 'Somewhere on the page is something missing and this is the best and the most accurate description you can get',
    estimation: 8,
    project: projects[0],
    user: workers[2],
    sprint: sprints[0]
  },
  {
    name: 'Issue 4',
    issue_type: 2,
    state: 3,
    description: 'Somewhere on the page is something missing and this is the best and the most accurate description you can get',
    estimation: 8,
    project: projects[0],
    user: workers[3],
    sprint: sprints[1]
  },
  {
    name: 'Issue 5',
    issue_type: 0,
    state: 1,
    description: 'Somewhere on the page is something missing and this is the best and the most accurate description you can get',
    estimation: 8,
    project: projects[0],
    user: workers[1],
    sprint: sprints[1]
  },
  {
    name: 'Issue 6',
    issue_type: 1,
    state: 4,
    description: 'Somewhere on the page is something missing and this is the best and the most accurate description you can get',
    estimation: 8,
    project: projects[0],
    user: workers[1],
    sprint: sprints[2]
  },
  {
    name: 'Issue 7',
    issue_type: 1,
    state: 0,
    description: 'Somewhere on the page is something missing and this is the best and the most accurate description you can get',
    estimation: 8,
    project: projects[1],
    user: workers[4],
    sprint: sprints[3]
  },
  {
    name: 'Issue 7',
    issue_type: 0,
    state: 2,
    description: 'Somewhere on the page is something missing and this is the best and the most accurate description you can get',
    estimation: 8,
    project: projects[1],
    user: workers[4],
    sprint: sprints[3]
  },
  {
    name: 'Issue 8',
    issue_type: 0,
    state: 1,
    description: 'Somewhere on the page is something missing and this is the best and the most accurate description you can get',
    estimation: 8,
    project: projects[1],
    user: workers[5],
    sprint: sprints[4]
  },
  {
    name: 'Issue 9',
    issue_type: 2,
    state: 1,
    description: 'Somewhere on the page is something missing and this is the best and the most accurate description you can get',
    estimation: 8,
    project: projects[1],
    user: workers[6],
    sprint: sprints[4]
  },
  {
    name: 'Issue 11',
    issue_type: 1,
    state: 0,
    description: 'Somewhere on the page is something missing and this is the best and the most accurate description you can get',
    estimation: 8,
    project: projects[1],
    user: workers[6],
    sprint: sprints[4]
  },
  {
    name: 'Issue 12',
    issue_type: 0,
    state: 0,
    description: 'Somewhere on the page is something missing and this is the best and the most accurate description you can get',
    estimation: 8,
    project: projects[1],
    user: workers[6],
    sprint: sprints[4]
  },
  {
    name: 'Issue 13',
    issue_type: 1,
    state: 2,
    description: 'Somewhere on the page is something missing and this is the best and the most accurate description you can get',
    estimation: 8,
    project: projects[1],
    user: workers[7],
    sprint: sprints[3]
  },
  {
    name: 'Issue 14',
    issue_type: 1,
    state: 1,
    description: 'Somewhere on the page is something missing and this is the best and the most accurate description you can get',
    estimation: 8,
    project: projects[1],
    user: workers[7],
    sprint: sprints[4]
  },
  {
    name: 'Issue 15',
    issue_type: 1,
    state: 3,
    description: 'Somewhere on the page is something missing and this is the best and the most accurate description you can get',
    estimation: 8,
    project: projects[1],
    user: workers[7],
    sprint: sprints[3]
  },
  {
    name: 'Issue 16',
    issue_type: 2,
    state: 0,
    description: 'Somewhere on the page is something missing and this is the best and the most accurate description you can get',
    estimation: 8,
    project: projects[2],
    user: workers[2],
    sprint: sprints[5]
  },
  {
    name: 'Issue 17',
    issue_type: 0,
    state: 0,
    description: 'Somewhere on the page is something missing and this is the best and the most accurate description you can get',
    estimation: 8,
    project: projects[2],
    user: workers[2],
    sprint: sprints[5]
  },
  {
    name: 'Issue 17',
    issue_type: 1,
    state: 1,
    description: 'Somewhere on the page is something missing and this is the best and the most accurate description you can get',
    estimation: 8,
    project: projects[2],
    user: workers[2],
    sprint: sprints[5]
  },
  {
    name: 'Issue 18',
    issue_type: 0,
    state: 1,
    description: 'Somewhere on the page is something missing and this is the best and the most accurate description you can get',
    estimation: 8,
    project: projects[2],
    user: workers[3],
    sprint: sprints[5]
  },
  {
    name: 'Issue 19',
    issue_type: 1,
    state: 1,
    description: 'Somewhere on the page is something missing and this is the best and the most accurate description you can get',
    estimation: 8,
    project: projects[2],
    user: workers[4],
    sprint: sprints[5]
  }
]

WorkEntry.create [
  { user: workers[0], hours: 2, issue: issues[0] },
  { user: workers[0], hours: 2, issue: issues[0] },
  { user: workers[0], hours: 2, issue: issues[2] },
  { user: workers[0], hours: 2, issue: issues[1] },
  { user: workers[1], hours: 2, issue: issues[4] },
  { user: workers[2], hours: 2, issue: issues[8] },
  { user: workers[2], hours: 2, issue: issues[7] },
  { user: workers[2], hours: 2, issue: issues[11] },
  { user: workers[3], hours: 2, issue: issues[5] },
  { user: workers[4], hours: 2, issue: issues[4] },
  { user: workers[5], hours: 2, issue: issues[3] },
  { user: workers[6], hours: 2, issue: issues[12] },
  { user: workers[7], hours: 2, issue: issues[10] },
  { user: workers[4], hours: 2, issue: issues[4] },
  { user: workers[5], hours: 2, issue: issues[16] },
  { user: workers[6], hours: 2, issue: issues[16] },
  { user: workers[7], hours: 2, issue: issues[19] },
  { user: workers[7], hours: 2, issue: issues[18] },
  { user: workers[7], hours: 2, issue: issues[14] },
  { user: workers[7], hours: 2, issue: issues[16] },
  { user: workers[7], hours: 2, issue: issues[17] },
  { user: workers[7], hours: 2, issue: issues[19] },
]

IssueComment.create [
  { user: workers[0], comment: 'some super cool comment', issue: issues[0] },
  { user: workers[0], comment: 'some super cool comment', issue: issues[0] },
  { user: workers[0], comment: 'some super cool comment', issue: issues[2] },
  { user: workers[0], comment: 'some super cool comment', issue: issues[1] },
  { user: workers[1], comment: 'some super cool comment', issue: issues[4] },
  { user: workers[2], comment: 'some super cool comment', issue: issues[8] },
  { user: workers[2], comment: 'some super cool comment', issue: issues[7] },
  { user: workers[2], comment: 'some super cool comment', issue: issues[11] },
  { user: workers[3], comment: 'some super cool comment', issue: issues[5] },
  { user: workers[4], comment: 'some super cool comment', issue: issues[4] },
  { user: workers[5], comment: 'some super cool comment', issue: issues[3] },
  { user: workers[6], comment: 'some super cool comment', issue: issues[12] },
  { user: workers[7], comment: 'some super cool comment', issue: issues[10] },
  { user: workers[4], comment: 'some super cool comment', issue: issues[4] },
  { user: workers[5], comment: 'some super cool comment', issue: issues[16] },
  { user: workers[6], comment: 'some super cool comment', issue: issues[16] },
  { user: workers[7], comment: 'some super cool comment', issue: issues[19] },
  { user: workers[7], comment: 'some super cool comment', issue: issues[18] },
  { user: workers[7], comment: 'some super cool comment', issue: issues[14] },
  { user: workers[7], comment: 'some super cool comment', issue: issues[16] },
  { user: workers[7], comment: 'some super cool comment', issue: issues[17] },
  { user: workers[7], comment: 'some super cool comment', issue: issues[19] },
]
