class Post < ApplicationRecord
  belongs_to :user

  validates :title, presence: true, length: { in: 5..100 }
  validates :body, presence: true, length: { minimum: 10 }
end
