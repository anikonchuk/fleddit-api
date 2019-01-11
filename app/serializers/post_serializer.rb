class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :img_url, :upvotes
  belongs_to :user
end
