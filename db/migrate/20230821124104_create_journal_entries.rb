class CreateJournalEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :journal_entries do |t|
      t.integer "journal_id", :null => false
      t.string "file_path"
      t.string "title", :limit => 25
      t.text "content", :limit => 300


      t.timestamps
    end
    
    add_index :journal_entries, :journal_id

  end
end
