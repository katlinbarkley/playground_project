class CreatePlaygrounds < ActiveRecord::Migration[6.0]
  def change
    create_table :playgrounds do |t|
      t.string :address
      t.boolean :indoor
      t.boolean :food
      t.string :restaurant
      t.integer :fun
      t.integer :clean
      t.integer :safety
      t.string :photo

      t.timestamps
    end
  end
end
