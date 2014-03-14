class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.string :materialName
      t.decimal :energyProperty

      t.timestamps
    end
  end
end
