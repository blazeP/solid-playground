class CreateFounds < ActiveRecord::Migration[5.2]
  def change
    create_table :founds do |t|
      t.references :user, foreign_key: true
      t.references :dwarf, foreign_key: true
      t.date :found_date

      t.timestamps
    end
  end
end
