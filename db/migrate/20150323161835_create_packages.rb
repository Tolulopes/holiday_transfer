class CreatePackages < ActiveRecord::Migration
  def change
    create_table :packages do |t|
      t.integer :user_id
      t.text :description
      t.integer :price
      t.string :status, :default => 'Available'

      t.timestamps null: false
    end
  end
end
