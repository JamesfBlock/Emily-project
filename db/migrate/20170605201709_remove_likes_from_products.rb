class RemoveLikesFromProducts < ActiveRecord::Migration[5.1]
  def change
    remove_column :products, :likes
    remove_column :products, :category
  end
end
