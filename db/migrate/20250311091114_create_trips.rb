class CreateTrips < ActiveRecord::Migration[7.1]
  def change
    create_table :trips do |t|
      t.integer :budget
      t.date :start_date
      t.date :end_date
      t.references :user, null: false, foreign_key: true
      t.references :package, null: false, foreign_key: true
      t.references :destination, null: false, foreign_key: true

      t.timestamps
    end
  end
end
