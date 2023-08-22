class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.integer "user_id"
      t.string "title", :limit => 25
      t.text "content", limt
      t.text "decription", :limit => 300
      t.date "date_of_birth" 
      t.date "joining_date"

      t.timestamps
    end
  end

  add_index :tasks, :user_id

end
