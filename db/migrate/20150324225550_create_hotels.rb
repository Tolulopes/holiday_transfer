class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|
      t.string :name
      t.text :address
      t.datetime :checkin
      t.datetime :checkout
      t.integer :stars
      t.integer :package_id

      t.timestamps null: false
    end
  end
end
