class AddColumnToWines < ActiveRecord::Migration[6.1]
  def change
    add_column :wines, :quantity, :integer 
  end
end
