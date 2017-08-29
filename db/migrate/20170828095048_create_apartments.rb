class CreateApartments < ActiveRecord::Migration[5.0]
  def change
    create_table :apartments do |t|
      t.string :title
      t.decimal :price
      t.date :date

      t.timestamps
    end
  end
end
