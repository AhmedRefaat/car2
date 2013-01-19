class AddAttachmentPhotoToOcars < ActiveRecord::Migration
  def self.up
    #change_table :ocars do |t|
     # t.attachment :photo
    #end
    add_column :ocars, :photo_file_name, :string
    add_column :ocars, :photo_content_type, :string
    add_column :ocars, :photo_file_size, :integer
    add_column :ocars, :photo_updated_at, :datetime
  end

  def self.down
    #drop_attached_file :ocars, :photo
    remove_column :ocars, :photo_file_name
    remove_column :ocars, :photo_content_type
    remove_column :ocars, :photo_file_size
    remove_column :ocars, :photo_updated_at
  end
end
