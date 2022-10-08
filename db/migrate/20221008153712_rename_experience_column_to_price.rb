class RenameExperienceColumnToPrice < ActiveRecord::Migration[5.2]
  def change
    rename_column :medicines, :experience, :price
  end
end
