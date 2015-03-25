class AddLatitudeToAttractions < ActiveRecord::Migration
  def change
    add_column :attractions, :latitude, :float
  end
end
