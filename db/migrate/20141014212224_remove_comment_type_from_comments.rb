class RemoveCommentTypeFromComments < ActiveRecord::Migration
  def change
    remove_column :comments, :comment_type, :string
  end
end
