class ChangeImageUrlToBeStringInPictures < ActiveRecord::Migration[6.1]
  def change
      change_column :pictures, :image_url, :text
  end
end
