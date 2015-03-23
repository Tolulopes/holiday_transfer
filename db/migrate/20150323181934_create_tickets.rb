class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :current_location
      t.string :destination
      t.text :class
      t.text :airline
      t.text :booking_reference
      t.integer :baggage_allowance
      t.datetime :departure_time
      t.datetime :arrival_time
      t.string :gate
      t.time :gate_opening_time
      t.time :gate_closing_time
      t.boolean :return
      t.integer :price
      t.integer :package_id

      t.timestamps null: false
    end
  end
end
