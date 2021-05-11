class CollectionSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :user_id
  has_many :pictures

end
