class CreateTaggings < ActiveRecord::Migration
  def change
    create_table :taggings do |t|
      t.integer :tag_id, :null => false
      t.integer :secret_id, :null => false

      t.timestamps
    end
    add_index :taggings, [:tag_id, :secret_id], :unique => true
  end
end
