class User < ApplicationRecord
  attr_accessor :password_digest
  has_and_belongs_to_many :teams
  has_many :issues

  enum role: [ :admin, :worker ]

  has_secure_password
  audited
end
