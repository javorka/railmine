class Project < ApplicationRecord
  belongs_to :team
  has_many :sprints
  has_many :issues

  audited
end
