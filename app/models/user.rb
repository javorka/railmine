class User < ApplicationRecord
  belongs_to :team
  has_many :issues

  enum role: [ :admin, :worker ]

  has_secure_password
  audited
end
