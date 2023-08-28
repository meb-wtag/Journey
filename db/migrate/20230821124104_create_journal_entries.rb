class CreateJournalEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :journal_entries, id: false do |t|
      t.integer "entry_id", :null => false
      t.integer "journal_id", :null => false
      t.integer "user_id"
      t.string "title", :limit => 25
      t.text "content", :limit => 300
      t.string "file_path"

      t.timestamps
    end

    add_index :journal_entries, :journal_id
    add_index :journal_entries, :user_id
    
  end
end
