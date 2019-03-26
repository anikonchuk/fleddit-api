class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :img_url, :likes, :created_at, :user_id
  belongs_to :user
end
