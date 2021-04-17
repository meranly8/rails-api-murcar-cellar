class CreateWines < ActiveRecord::Migration[6.1]
  def change
    create_table :wines do |t|
      t.string :wine
      t.string :region
      t.string :country
      t.integer :year
      t.boolean :opened
      t.string :image
      t.float :price
      t.float :rating

      t.timestamps
    end
  end
end
