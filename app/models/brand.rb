# == Schema Information
#
# Table name: brands
#
#  id         :bigint           not null, primary key
#  link_url   :string           not null
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Brand < ApplicationRecord
    validates :name, :link_url, presence: true

    has_many :products,
        primary_key: :id,
        foreign_key: :brand_id,
        class_name: :Product,
        dependent: :destroy
end
