class AddColumnsToRides < ActiveRecord::Migration
  def change
    add_column :rides, :departure_date, :datetime
    add_column :rides, :return_date, :datetime
  end
end
