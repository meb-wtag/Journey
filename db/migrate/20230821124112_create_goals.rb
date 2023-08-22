class CreateGoals < ActiveRecord::Migration[7.0]
  def change
    create_table :goals,id: false do |t|
      t.integer "goal_id", primary_key: true #primary key 
      t.integer "entry_id", :null => false
      t.string "title", :limit => 25
      t.text "content", :limit => 300
      t.boolean "reached", :default => false

      t.timestamps
    end
    add_index :goals, :entry_id
  end
end
