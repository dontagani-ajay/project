class CreateMedicines < ActiveRecord::Migration[5.2]
  def change
    create_table :medicines do |t|
      t.string :name
      t.string :quantity
      t.string :expiry_date
      t.float :experience
      t.boolean :child_safe

      t.timestamps
    end
  end
end
