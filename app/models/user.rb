class User < ApplicationRecord
    validates :email, presence: true, uniqueness: true
    validates :name, :bio, :sunscreen_id, presence: true

    has_many :routines,
        primary_key: :id,
        foreign_key: :author_id,
        class_name: :Routine,
        dependent: :destroy
end
