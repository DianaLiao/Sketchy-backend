class CreatePictures < ActiveRecord::Migration[6.1]
  def change
    create_table :pictures do |t|
      t.string :name
      t.boolean :favorite , default: false
      t.string :description
      t.boolean :public, default: false

      t.timestamps
    end
  end
end
