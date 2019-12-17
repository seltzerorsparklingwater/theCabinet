# == Schema Information
#
# Table name: snapshots
#
#  id             :bigint           not null, primary key
#  commentary     :text
#  user_photo_url :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  user_id        :integer          not null
#
# Indexes
#
#  index_snapshots_on_user_id  (user_id)
#

class Snapshot < ApplicationRecord
    validates :user_id, presence: true
end
