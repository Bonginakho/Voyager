class CreateFlights < ActiveRecord::Migration[7.1]
  def change
    create_table :flights do |t|
      t.string :airline
      t.string :depature
      t.string :arrival
      t.integer :price

      t.timestamps
    end
  end
end
