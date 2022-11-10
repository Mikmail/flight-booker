class AddDepartureAirportIdToFlight < ActiveRecord::Migration[6.1]
  def change
    add_column :flights, :departure_airport_id, :integer
  end
end
