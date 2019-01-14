class Post < ApplicationRecord
  has_many :comments

  validates :title, :content, :author, presence: true

end
