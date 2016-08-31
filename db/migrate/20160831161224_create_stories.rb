class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :title, null: false
      t.text :description
      t.integer :user_id, null: false
      t.integer :cover_image_id, null: false

      t.timestamps null: false
    end

    add_index :stories, :user_id
    add_index :stories, :cover_image_id
  end
end
