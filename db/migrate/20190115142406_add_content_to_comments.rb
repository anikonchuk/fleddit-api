class AddContentToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :content, :text
  end
end
