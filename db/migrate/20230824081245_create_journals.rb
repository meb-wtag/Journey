class CreateJournals < ActiveRecord::Migration[7.0]
  def change
    create_table :journals, id: false do |t|
      t.integer "journal_id",primary_key: true, null: false
      t.integer "user_id", null: false
      t.string "title", limit: 25
      t.text "description"     

      t.timestamps
    end

    add_index :journals, :user_id
  end
end
