class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.references :company, foreign_key: true
      t.references :room, foreign_key: true
      t.integer :price
      t.string :URL
      t.string :image_url
      t.string :featured
      t.string :boolean
      t.string :description

      t.timestamps
    end
  end
end
