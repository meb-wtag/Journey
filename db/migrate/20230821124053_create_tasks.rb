class CreateTasks < ActiveRecord::Migration[7.0]
  def up
    create_table :tasks do |t|
      t.integer "user_id", :null => false
      t.string "title"
      t.text "content"
      t.date "deadline"
      t.integer "importance"
      t.string "status", :default => "to do"

      
      t.timestamps
    end

    add_index :tasks, :user_id
  end

  def down
    drop_table :tasks
  end
end
