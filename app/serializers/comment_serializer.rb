class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :post_id, :author
  belongs_to :user
end
