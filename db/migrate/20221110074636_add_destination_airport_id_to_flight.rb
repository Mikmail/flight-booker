class AddDestinationAirportIdToFlight < ActiveRecord::Migration[6.1]
  def change
    add_column :flights, :destination_airport_id, :integer
  end
end
