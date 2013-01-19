class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :ckind
      t.string :cmodel
      t.integer :price
      t.string :find
      t.string :show

      t.timestamps
    end
  end
end
