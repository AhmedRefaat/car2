class CreateOcars < ActiveRecord::Migration
  def change
    create_table :ocars do |t|
      t.string :oem
      t.string :model
      t.string :transmission
      t.string :drive_type
      t.string :engine_size
      t.string :seat_material
      t.integer :performance
      t.integer :gearbox
      t.string :body_style
      t.string :owner
      t.string :telephone
      t.string :image_url

      t.timestamps
    end
  end
end
