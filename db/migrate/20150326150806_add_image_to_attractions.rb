class AddImageToAttractions < ActiveRecord::Migration
  def change
    add_column :attractions, :image, :text
  end
end
