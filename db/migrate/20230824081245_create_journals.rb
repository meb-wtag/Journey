class CreateJournals < ActiveRecord::Migration[7.0]
  def up
    create_table :journals do |t|
      t.integer "user_id", null: false, index: true, foreign_key: true
      t.string "title"
      t.text "description"     

      t.timestamps
    end
  end

  def down
    drop_table :journals
  end
end
