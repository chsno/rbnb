class CreateFlats < ActiveRecord::Migration[7.0]
  def change
    create_table :flats do |t|
      t.text :address
      t.string :city
      t.integer :rooms
      t.integer :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
