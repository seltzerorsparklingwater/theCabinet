class CreateBrands < ActiveRecord::Migration[6.0]
  def change
    create_table :brands do |t|
      t.string :name, null: false
      t.string :link_url, null: false
      t.timestamps
    end
  end
end
