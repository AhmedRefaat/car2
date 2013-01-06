class Ncar < ActiveRecord::Base
  attr_accessible :body_style, :drive_type, :engine_size, :gearbox, :model, :oem, :performance, :seat_material, :transmission
end
