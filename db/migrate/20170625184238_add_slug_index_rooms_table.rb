class AddSlugIndexRoomsTable < ActiveRecord::Migration[5.1]
  def change
    add_index :rooms, :slug, unique: true
  end
end
