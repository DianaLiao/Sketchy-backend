class Picture < ApplicationRecord
    has_many :picture_collections
    has_many :collections, through: :picture_collections
    belongs_to :user

    def self.public
        Picture.where(isPublic: true)
    end

    def first_collection
        self.collections.first
    end
    

end
