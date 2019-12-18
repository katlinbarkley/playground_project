class AddRestroomsToPlaygrounds < ActiveRecord::Migration[6.0]
  def change
    add_column :playgrounds, :restrooms, :boolean
  end
end
