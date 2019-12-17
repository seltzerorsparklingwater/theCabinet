# == Schema Information
#
# Table name: routines
#
#  id          :bigint           not null, primary key
#  shelfie_url :string
#  title       :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  author_id   :integer          not null
#
# Indexes
#
#  index_routines_on_author_id  (author_id)
#

class Routine < ApplicationRecord
    #steps_subdoc will now accept a Hash rather than String
    serialize :steps_subdoc, Hash
    validates :author_id, :title, :steps_subdoc, presence: true

    belongs_to :author,
        primary_key: :id,
        foreign_key: :author_id,
        class_name: :User

    has_many :routine_products
    has_many :products, :through => :routine_products
end
