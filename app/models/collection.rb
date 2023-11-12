class Collection < ApplicationRecord
    has_many :items
    belongs_to :user
    validates_presence_of :name
end
