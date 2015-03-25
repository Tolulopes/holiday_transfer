class AddLongitudeToAttractions < ActiveRecord::Migration
  def change
    add_column :attractions, :longitude, :float
  end
end
