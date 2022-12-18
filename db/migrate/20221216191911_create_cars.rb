class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.integer :car_id, null: false
      t.integer :number_plate, null: false
      t.string :car_name, null: false
      t.integer :gas, null: false
      t.integer :interior, null: false
      t.integer :exterior, null: false
      t.integer :c_sheet, null: false
      t.integer :b_sheet, null: false
      t.integer :j_sheet, null: false
      t.integer :etc, null: false

      t.timestamps
    end
  end
end
