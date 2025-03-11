class AddDayAndCostToItineraries < ActiveRecord::Migration[7.1]
  def change
    add_column :itineraries, :day, :string
    add_column :itineraries, :cost, :integer
  end
end
