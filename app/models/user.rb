class User < ApplicationRecord
    validates :email, presence: true, uniqueness: true
    validates :name, :bio, :sunscreen_id, :bio, presence: true


end
