# == Schema Information
#
# Table name: routine_products
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  product_id :integer
#  routine_id :integer
#
# Indexes
#
#  index_routine_products_on_product_id  (product_id)
#  index_routine_products_on_routine_id  (routine_id)
#

class RoutineProduct < ApplicationRecord
    belongs_to :routine
    belongs_to :product 
end
