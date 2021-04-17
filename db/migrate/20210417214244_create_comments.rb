class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :name
      t.text :comment
      t.integer :wine_id

      t.timestamps
    end
  end
end