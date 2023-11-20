class Item < ActiveRecord::Base
    belongs_to :collection
    has_many :comments
    has_many :likes, dependent: :destroy
    validates :name, presence: true

end