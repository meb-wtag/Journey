class CreateJournalEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :journal_entries, id: false do |t|
      t.integer "entry_id",primary_key: true, :null => false
      t.integer "journal_id", :null => false
      t.integer "user_id"
      t.string "title", :limit => 25
      t.text "content"

      t.timestamps
    end
    
  end
end
