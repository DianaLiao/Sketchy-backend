class CreatePictureCollections < ActiveRecord::Migration[6.1]
  def change
    create_table :picture_collections do |t|
      t.integer :collection_id
      t.integer :picture_id

      t.timestamps
    end
  end
end
