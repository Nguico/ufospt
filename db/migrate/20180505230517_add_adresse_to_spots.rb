class AddAdresseToSpots < ActiveRecord::Migration[5.1]
  def change
    add_column :spots, :adress, :string
  end
end
