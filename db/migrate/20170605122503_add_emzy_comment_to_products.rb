class AddEmzyCommentToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :emzy_comment, :string
  end
end
