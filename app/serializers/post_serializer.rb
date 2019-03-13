class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :img_url, :author, :likes, :created_at
end
