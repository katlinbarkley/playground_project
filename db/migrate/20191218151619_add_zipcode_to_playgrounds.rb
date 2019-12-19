class AddZipcodeToPlaygrounds < ActiveRecord::Migration[6.0]
  def change
    add_column :playgrounds, :zipcode, :string
    add_column :playgrounds, :latitude, :string
    add_column :playgrounds, :longitude, :string
    add_column :playgrounds, :outdoor, :boolean
  end
end
