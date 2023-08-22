class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      #primary key gets created automaticly
      t.string "fist_name", :limit => 25
      t.string "last_name", :limit => 25
      t.string "role", :default => 'user'
      t.text "decription", :limit => 300
      t.date "date_of_birth" 
      t.date "joining_date"


      t.timestamps
      #t.datetime "created_at"
      #t.datetime "updated_at" 
    end
  end

end
