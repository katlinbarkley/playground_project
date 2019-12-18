class AddZipcodeToPlaygrounds < ActiveRecord::Migration[6.0]
  def change
    add_column :playgrounds, :zipcode, :string
    add_column :playgrounds, :lat, :string
    add_column :playgrounds, :long, :string
    add_column :playgrounds, :outdoor, :boolean
  end
end
