class CreateSpots < ActiveRecord::Migration[5.1]
  def change
    create_table :spots do |t|
      t.string :title
      t.date :date

      t.timestamps
    end
  end
end