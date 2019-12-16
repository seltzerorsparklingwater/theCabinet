class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.integer :brand_id, null: false
      t.string :affiliate_links, null: false
      t.string :photo_url
      t.string :cos_dna_url
      t.string :product_type
      t.timestamps
    end
  end
end
