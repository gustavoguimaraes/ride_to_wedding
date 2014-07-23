class Rides < ActiveRecord::Migration
  def change
    create_table :rides do |t|
      t.string :name
      t.string :status
      t.string :origin
      t.string :contact_info

      t.timestamps
    end
  end
end
