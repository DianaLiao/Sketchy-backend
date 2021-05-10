class Collection < ApplicationRecord
    belongs_to :user
    has_many :picture_collections
    has_many :pictures, through: :picture_collections

end
