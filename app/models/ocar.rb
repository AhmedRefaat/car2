class Ocar < ActiveRecord::Base
  attr_accessible :body_style, :drive_type, :engine_size, :gearbox, :image_url, :model, :oem, :owner, :performance, :seat_material, :telephone, :transmission
end
