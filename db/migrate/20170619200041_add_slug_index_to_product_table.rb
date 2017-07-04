class AddSlugIndexToProductTable < ActiveRecord::Migration[5.1]
  def change
    add_index :products, :slug, unique: true
  end
end
