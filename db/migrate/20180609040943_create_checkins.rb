class CreateCheckins < ActiveRecord::Migration[5.1]
  def change
    create_table :checkins do |t|
      t.references :user, foreign_key: true
      t.references :store, foreign_key: true
      t.datetime :visit_time
      t.timestamps
    end
  end
end
