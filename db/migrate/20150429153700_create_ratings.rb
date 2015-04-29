class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.references :car, index: true, foreign_key: true
      t.integer :score
      t.string :default
     
      t.timestamps null: false
    end
  end
end
