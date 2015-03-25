class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :current_location
      t.integer :destination_id
      t.text :ticket_class
      t.text :airline
      t.text :booking_reference
      t.integer :baggage_allowance
      t.datetime :departure_time
      t.datetime :arrival_time
      t.boolean :round_trip
      t.integer :price
      t.integer :package_id

      t.timestamps null: false
    end
  end
end
