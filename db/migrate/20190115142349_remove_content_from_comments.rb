class RemoveContentFromComments < ActiveRecord::Migration[5.2]
  def change
    remove_column :comments, :content, :string
  end
end
