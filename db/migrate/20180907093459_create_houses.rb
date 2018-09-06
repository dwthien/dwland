class CreateHouses < ActiveRecord::Migration[5.1]
  def change
    create_table :houses do |t|
      t.string :name
      t.string :address
      t.string :city

      t.integer  :per_night_price, :default => 0
      t.integer  :sale_price, :default => 0
      t.integer  :bedrooms, :default => 0
      t.integer  :wc, :default => 0

      t.string :status, :default => ""
      t.string :describe, :default => ""
      t.json :image

      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :houses, :city
  end
end
