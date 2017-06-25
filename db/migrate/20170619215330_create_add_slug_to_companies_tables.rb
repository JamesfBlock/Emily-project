class CreateAddSlugToCompaniesTables < ActiveRecord::Migration[5.1]
  def change
    create_table :add_slug_to_companies_tables do |t|

      t.timestamps
    end
  end
end
