class AddSlugToRoomsTable < ActiveRecord::Migration[5.1]
  def change
    add_column :rooms, :slug, :string
  end
end
