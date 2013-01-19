class Ocar < ActiveRecord::Base
  validates :owner, :presence => true
  validates :telephone, :presence => true
  attr_accessible :body_style, :drive_type, :engine_size, :gearbox, :image_url, :model, :oem, :owner, :performance, :seat_material, :telephone, :transmission, :photo
  
  has_attached_file :photo, :styles => { :small => "600*600>"}, 
                      :url => "/assets/images/ocar/:id/:style/:basename.:extension",
                      :path => ":rails_root/public/assets/images/ocar/:id/:style/:basename.:extension" 
end
