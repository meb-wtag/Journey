class CreateJournalEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :journal_entries do |t|
      t.integer "journal_id", :null => false
      t.integer "user_id"
      t.string "title"
      t.text "content"
      t.text "goal"

      t.timestamps
    end
    
  end

  def down
    drop_table :users
  end
end
