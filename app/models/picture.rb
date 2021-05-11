class Picture < ApplicationRecord
    has_many :picture_collections
    has_many :collections, through: :picture_collections
    belongs_to :user
end
