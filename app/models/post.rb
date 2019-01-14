class Post < ApplicationRecord
  has_many :comments

  validates :title, :content, presence: true

end
