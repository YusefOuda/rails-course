class AddCommentedIdToComments < ActiveRecord::Migration
  def change
    add_column :comments, :commented_id, :integer
  end
end
