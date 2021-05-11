class User < ApplicationRecord
    has_many :collections
    has_many :pictures
end
