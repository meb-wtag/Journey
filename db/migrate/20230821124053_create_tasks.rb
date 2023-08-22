class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.integer "user_id", :null => false
      t.string "title", :limit => 25
      t.text "content", :limit => 300
      t.date "deadline"
      t.integer "importance"
      t.string "status", :default => "to do"

      
      t.timestamps
    end

    add_index :tasks, :user_id
  end
end
