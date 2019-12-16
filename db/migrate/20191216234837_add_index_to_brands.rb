class AddIndexToBrands < ActiveRecord::Migration[6.0]
  def change
    add_index :brands, :name
  end
end
