class CreateTasks < ActiveRecord::Migration[7.0]
  def up
    create_table :tasks do |t|
      t.integer "user_id",index: true, foreign_key: true, :null => false
      t.string "title"
      t.text "content"
      t.date "deadline"
      t.integer "importance"
      t.string "status", :default => "to do"
      
      t.timestamps
    end

  end

  def down
    drop_table :tasks
  end
end
