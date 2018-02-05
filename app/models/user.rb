class User < ApplicationRecord
  attr_accessor :password_digest
  belongs_to :team, optional: true
  has_many :issues

  enum role: [ :admin, :worker ]

  has_secure_password
  audited
end
