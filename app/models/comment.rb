class Comment < ApplicationRecord
  belongs_to :post

  validates :content, :author, presence: true
end
