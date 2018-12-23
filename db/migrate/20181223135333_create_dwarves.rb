class CreateDwarves < ActiveRecord::Migration[5.2]
  def change
    create_table :dwarves do |t|
      t.string :original_name
      t.string :english_name
      t.text :description
      t.integer :points_value
      t.string :latitude
      t.string :longitude
      t.string :localization
      t.integer :district

      t.timestamps
    end
  end
end
