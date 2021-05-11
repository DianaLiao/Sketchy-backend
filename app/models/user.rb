class User < ApplicationRecord
    has_many :collections
    has_many :pictures

    validates :name, :email, presence: true
    validates :email, uniqueness: true
    

end
