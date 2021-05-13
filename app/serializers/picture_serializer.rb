class PictureSerializer < ActiveModel::Serializer
  attributes :id, :name, :favorite, :description, :isPublic, :created_at, :image_url, :user_id, :first_collection

  


end
