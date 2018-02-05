class WorkEntry < ApplicationRecord
  belongs_to :user
  belongs_to :issue

  audited
end
