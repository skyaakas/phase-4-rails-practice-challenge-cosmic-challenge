class Mission < ApplicationRecord

    validates :name, presence: true
    validates :scientist_id, uniqueness: {scope: :name}

    belongs_to :scientist
    belongs_to :planet
end
