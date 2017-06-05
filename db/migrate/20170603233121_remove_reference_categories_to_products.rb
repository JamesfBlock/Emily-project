class RemoveReferenceCategoriesToProducts < ActiveRecord::Migration[5.1]
  def change
    remove_reference :products, :category, index: true
    remove_reference :products, :user, index: true
  end
end
