class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.integer :user_id
      t.integer :boat_id
      t.integer :containers
      t.string :cargo
      t.string :origin
      t.decimal :cost
      t.string :destination

      t.timestamps null: false
    end
  end
end
