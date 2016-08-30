class CreateTextAreas < ActiveRecord::Migration
  def change
    create_table :text_areas do |t|
      t.string :title
      t.text :body
      t.integer :position, null: false
      t.integer :story_id, null: false

      t.timestamps null: false
    end

    add_index :text_areas, :story_id
  end
end
