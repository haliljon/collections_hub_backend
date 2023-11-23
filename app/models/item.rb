class Item < ActiveRecord::Base
    belongs_to :collection
    has_many :comments, dependent: :destroy
    has_many :likes, dependent: :destroy
    validates :name, presence: true
    has_many :tags, dependent: :destroy
end