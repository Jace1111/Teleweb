class CreateMeasures < ActiveRecord::Migration[6.0]
  def change
    create_table :measures do |t|
      t.string :Patient_Name
      t.float :Date
      t.float :Time
      t.float :Temperature
      t.float :Oxi_Levels
      t.float :Heart_Rate

      t.timestamps
    end
  end
end
