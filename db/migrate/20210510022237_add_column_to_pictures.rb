class AddColumnToPictures < ActiveRecord::Migration[6.1]
  def change
    add_column :pictures, :test_image, :string
  end
end
