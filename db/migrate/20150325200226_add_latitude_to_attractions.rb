class AddLatitudeToAttractions < ActiveRecord::Migration
  def change
    add_column :attractions, :Latitude, :float
  end
end
