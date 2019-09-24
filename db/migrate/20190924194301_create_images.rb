class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.string :image_url
      t.references :hub, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
