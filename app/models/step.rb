# == Schema Information
#
# Table name: steps
#
#  id                     :bigint           not null, primary key
#  description            :text             not null
#  step_number_in_routine :integer          not null
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  routine_id             :integer          not null
#

class Step < ApplicationRecord
    validates :routine_id, :step_number_in_routine, :description, presence: true

    
end
