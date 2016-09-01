class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :url, null: false
      t.string :med_url, null: false
      t.integer :position, null: false
      t.integer :group_position, null: false
      t.boolean :full_width, default: false, null: false
      t.integer :story_id, null: false

      t.timestamps null: false
    end

    add_index :photos, :position
    add_index :photos, :group_position
    add_index :photos, :story_id
  end
end
