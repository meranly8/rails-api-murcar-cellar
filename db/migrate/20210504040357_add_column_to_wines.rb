class AddColumnToWines < ActiveRecord::Migration[6.1]
  def change
    add_column :wines, :quantity, :integer, default: 0 
  end
end
