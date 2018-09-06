class CreateSurveys < ActiveRecord::Migration[5.1]
  def change
    create_table :surveys do |t|
      t.integer :value
      t.integer :happiness
      t.integer :communication

      t.text :comments

      t.boolean :publish

      t.references :user, foreign_key: true
      t.references :house, foreign_key: true

      t.timestamps
    end
    add_index :surveys, :value
  end
end
