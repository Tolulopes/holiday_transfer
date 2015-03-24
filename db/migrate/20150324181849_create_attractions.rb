class CreateAttractions < ActiveRecord::Migration
  def change
    create_table :attractions do |t|
      t.string :name
      t.text :description
      t.string :location
      t.datetime :date
      t.integer :package_id

      t.timestamps null: false
    end
  end
end
