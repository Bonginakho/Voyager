class CreateItineraries < ActiveRecord::Migration[7.1]
  def change
    create_table :itineraries do |t|
      t.text :activities
      t.references :trip, null: false, foreign_key: true

      t.timestamps
    end
  end
end
