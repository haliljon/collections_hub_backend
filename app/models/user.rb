class User < ApplicationRecord
    has_secure_password
    has_many :collections
    has_many :items, through: :collections
    has_many :comments
    
    validates_presence_of :email
    validates_uniqueness_of :email
    validates_presence_of :username
end
