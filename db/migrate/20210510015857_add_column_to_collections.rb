class AddColumnToCollections < ActiveRecord::Migration[6.1]
  def change
    add_column :collections, :user_id, :integer
  end
end
