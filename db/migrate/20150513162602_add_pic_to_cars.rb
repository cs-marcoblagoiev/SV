class AddPicToCars < ActiveRecord::Migration
  def change
    add_column :cars, :pic, :string
  end
end
