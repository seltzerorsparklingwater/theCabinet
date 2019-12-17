# == Schema Information
#
# Table name: products
#
#  id              :bigint           not null, primary key
#  affiliate_links :string           not null
#  cos_dna_url     :string
#  name            :string           not null
#  photo_url       :string
#  product_type    :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  brand_id        :integer          not null
#
# Indexes
#
#  index_products_on_brand_id  (brand_id)
#

class Product < ApplicationRecord
    #affiliate_links will now accept a Hash rather than String
    serialize :affiliate_links, Hash
    validates :affiliate_links, :name, :brand_id, presence: true

    belongs_to :brand,
        primary_key: :id,
        foreign_key: :brand_id,
        class_name: :Brand 
    
    has_many :routine_products
    has_many :routines, :through => :routine_products

end
