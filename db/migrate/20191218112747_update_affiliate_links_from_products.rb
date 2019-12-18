class UpdateAffiliateLinksFromProducts < ActiveRecord::Migration[6.0]
  
  enable_extension 'hstore' unless extension_enabled?('hstore')

  def change
    remove_column :products, :affiliate_links
    add_column :products, :affiliate_links, :hstore
    add_index :products, :affiliate_links, using: :gin
  end
end
