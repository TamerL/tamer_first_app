class CreateCars < ActiveRecord::Migration[5.1]
  def change
    create_table :cars do |t|
      t.string "model"
      t.string "colour"
    end
  end
end
