class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :upvotes
  belongs_to :user
end
