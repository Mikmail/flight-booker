class AddDateToFlight < ActiveRecord::Migration[6.1]
  def change
    add_column :flights, :date, :datetime
  end
end
