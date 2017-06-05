class AddlikeCountToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :likes, :integer
  end
end
