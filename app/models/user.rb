class User < ApplicationRecord
  has_many :posts
  has_secure_password

  validates :username, presence: true, uniqueness: true, length: { in: 3..20 }
  validates :password, presence: true, length: { minimum: 6 }
end
