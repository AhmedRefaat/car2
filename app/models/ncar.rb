class Ncar < ActiveRecord::Base
  attr_accessible :body_style, :drive_type, :engine_size, :gearbox, :model, :oem, :performance, :seat_material, :transmission, :photo
  
  has_attached_file :photo, :styles => { :small => "600*600>"}, 
                      :url => "/assets/images/ncar/:id/:style/:basename.:extension",
                      :path => ":rails_root/public/assets/images/ncar/:id/:style/:basename.:extension" 
end
