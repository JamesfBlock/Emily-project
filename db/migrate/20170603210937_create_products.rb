class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :company
      t.string :description
      t.integer :price
      t.string :url
      t.boolean :featured

      t.timestamps
    end
  end
end
