class Issue < ApplicationRecord
  belongs_to :sprint
  belongs_to :project
  belongs_to :user

  has_many :issue_comments
  has_many :work_entries

  enum type: [ :bug, :feature, :task ]

  audited
end
