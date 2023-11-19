class Item < ActiveRecord::Base
    belongs_to :collection
    has_many :comments
    validates :name, presence: true
end