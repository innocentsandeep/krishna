class CreateToofans < ActiveRecord::Migration
  def change
    create_table :toofans  do |t|
    	t.string "username"
    	t.string "password"

      t.timestamps null: false
    end
  end
end