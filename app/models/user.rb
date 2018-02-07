class User < ApplicationRecord
  has_and_belongs_to_many :teams
  has_many :issues
  validates_presence_of :password_digest, on: :create

  enum role: %i[admin worker]

  has_secure_password
  audited
end
