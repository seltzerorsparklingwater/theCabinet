# == Schema Information
#
# Table name: users
#
#  id           :bigint           not null, primary key
#  bio          :text             not null
#  email        :string           not null
#  insta_url    :string
#  name         :string           not null
#  photo_url    :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  sunscreen_id :integer          not null
#

class User < ApplicationRecord
    validates :email, presence: true, uniqueness: true
    validates :name, :bio, :sunscreen_id, presence: true

    has_many :routines,
        primary_key: :id,
        foreign_key: :author_id,
        class_name: :Routine,
        dependent: :destroy
end
