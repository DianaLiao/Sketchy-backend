class RenameTestImageToImageUrl < ActiveRecord::Migration[6.1]
  def change
    rename_column :pictures, :test_image, :image_url
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
