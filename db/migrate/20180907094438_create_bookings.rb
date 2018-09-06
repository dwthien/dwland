class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.string :status,       :null => false, :default => ""
      
      t.datetime :check_in
      t.datetime :check_out
      
      t.references :user, foreign_key: true
      t.references :house, foreign_key: true

      t.timestamps
    end
    add_index :bookings, :status
  end
end
