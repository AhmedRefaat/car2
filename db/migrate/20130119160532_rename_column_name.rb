class RenameColumnName < ActiveRecord::Migration
  def up
    rename_column :ocars, :model, :cmodel
  end

  def down
  end
end
