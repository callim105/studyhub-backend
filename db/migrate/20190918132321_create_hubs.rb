class CreateHubs < ActiveRecord::Migration[5.2]
  def change
    create_table :hubs do |t|
      t.string :name
      t.string :latitude
      t.string :longitude
      t.string :address
      t.integer :rating
      t.string :description
      t.boolean :wifi
      t.boolean :restrooms
      t.string :noise
      
      t.timestamps
    end
  end
end
