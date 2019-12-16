class Routine < ApplicationRecord
    #steps_subdoc will now accept a Hash rather than String
    serialize :steps_subdoc, Hash
    validates :author_id, :title, :steps_subdoc, presence: true
end
