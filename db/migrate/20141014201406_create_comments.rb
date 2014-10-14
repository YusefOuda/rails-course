class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :video, index: true
      t.text :content

      t.timestamps
    end
  end
end
