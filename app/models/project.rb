class Project < ApplicationRecord
  belongs_to :team, optional: true
  has_many :sprints
  has_many :issues

  enum status: [ :active, :inactive, :postponed ]

  audited
end
