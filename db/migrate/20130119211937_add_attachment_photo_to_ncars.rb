class AddAttachmentPhotoToNcars < ActiveRecord::Migration
  def self.up
    #change_table :ncars do |t|
     # t.attachment :photo
    #end
    add_column :ncars, :photo_file_name, :string
    add_column :ncars, :photo_content_type, :string
    add_column :ncars, :photo_file_size, :integer
    add_column :ncars, :photo_updated_at, :datetime
  end

  def self.down
    #drop_attached_file :ncars, :photo
    remove_column :ncars, :photo_file_name
    remove_column :ncars, :photo_content_type
    remove_column :ncars, :photo_file_size
    remove_column :ncars, :photo_updated_at
  end
end
