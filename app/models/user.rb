class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable
  has_many :posts

  validates :username, presence: true, uniqueness: true, length: { in: 3..20 }
  validates :password, presence: true, length: { in: 6..76 }
end
