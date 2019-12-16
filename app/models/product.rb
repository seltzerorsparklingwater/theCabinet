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

class Product < ApplicationRecord
    #steps_subdoc will now accept a Hash rather than String
    serialize :affiliate_links, Hash
    validates :affiliate_links, :name, :brand_id, presence: true
end
