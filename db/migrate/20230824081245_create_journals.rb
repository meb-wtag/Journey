class CreateJournals < ActiveRecord::Migration[7.0]
  def up
    create_table :journals do |t|
      t.integer "user_id"
      t.string "title"
      t.text "description"     

      t.timestamps
    end

    add_index :journals, :user_id
  end

  def down
    drop_table :journals
  end
end
