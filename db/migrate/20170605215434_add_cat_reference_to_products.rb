class AddCatReferenceToProducts < ActiveRecord::Migration[5.1]
  def self.down
     remove_column :categories, :product_id
  end
end
