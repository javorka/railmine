class Project < ApplicationRecord
  belongs_to :team, optional: true
  has_many :sprints
  has_many :issues

  audited
end
