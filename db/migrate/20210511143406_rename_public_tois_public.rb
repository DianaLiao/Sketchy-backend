class RenamePublicToisPublic < ActiveRecord::Migration[6.1]
  def change
    rename_column :pictures, :public, :isPublic
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
