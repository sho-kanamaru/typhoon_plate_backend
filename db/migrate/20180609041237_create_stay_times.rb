class CreateStayTimes < ActiveRecord::Migration[5.1]
  def change
    create_table :stay_times do |t|
      t.references :store, foreign_key: true
      t.integer :stay_time
      t.timestamps
    end
  end
end
