class CreateBoats < ActiveRecord::Migration
  def change
    create_table :boats do |t|
      t.integer :user_id
      t.string :name
      t.integer :containers
      t.string :location

      t.timestamps null: false
    end
  end
end
