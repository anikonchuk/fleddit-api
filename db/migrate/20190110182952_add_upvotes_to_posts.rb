class AddUpvotesToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :upvotes, :integer, default: 0
  end
end
