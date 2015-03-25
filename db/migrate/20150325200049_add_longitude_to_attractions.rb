class AddLongitudeToAttractions < ActiveRecord::Migration
  def change
    add_column :attractions, :Longitude, :float
  end
end
