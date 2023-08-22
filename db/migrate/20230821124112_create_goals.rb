class CreateGoals < ActiveRecord::Migration[7.0]
  def change
    create_table :goals do |t|
      t.integer "journal_entrie_id", :null => false
      t.string "title", :limit => 25
      t.text "content", :limit => 300
      t.boolean "reached", :default => false

      t.timestamps
    end
    add_index :goals, :journal_entrie_id
  end
end
