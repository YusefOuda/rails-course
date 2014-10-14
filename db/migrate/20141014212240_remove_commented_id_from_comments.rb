class RemoveCommentedIdFromComments < ActiveRecord::Migration
  def change
    remove_column :comments, :commented_id, :integer
  end
end
