class CreatePrescribedMedicines < ActiveRecord::Migration[5.2]
  def change
    create_table :prescribed_medicines do |t|
      t.integer :medicine_id
      t.integer :prescription_id
      t.integer :quantity
      t.integer :dosage
      t.string :review


      t.timestamps
    end
  end
end
