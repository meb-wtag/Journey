class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users, id: false do |t|
      t.integer "user_id",primary_key: true, null: false
      t.string "fist_name", limit: 25
      t.string "last_name", limit: 25
      t.string "role", default: "user"
      t.text "description"
      t.date "date_of_birth"
      t.date "joining_date"

      t.timestamps
    end
  end
end
