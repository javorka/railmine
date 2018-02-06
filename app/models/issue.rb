class Issue < ApplicationRecord
  belongs_to :sprint, optional: true
  belongs_to :project
  belongs_to :user, optional: true

  has_many :issue_comments
  has_many :work_entries

  enum issue_type: [ :bug, :feature, :task ]
  enum state: [ :todo, :in_progress, :to_test, :testing, :done ]

  audited
end
