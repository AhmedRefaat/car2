class RenameColumnfromTableOcar < ActiveRecord::Migration
  def up
    rename_column :ocars, :cmodel , :model 
  end

  def down
  end
end
