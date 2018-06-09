class CreateStores < ActiveRecord::Migration[5.1]
  def change
    create_table :stores do |t|
      t.string :name
      t.string :adress
      t.string :uuid
      t.integer :capacity
      t.integer :stay_average_time
      t.float :lat
      t.float :lng
      t.timestamps
    end
  end
end
