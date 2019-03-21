class User < ApplicationRecord
  has_secure_password
  validates :username, presence: true, uniqueness: true

  has_many :posts
  has_many :comments

end
