class CreateWindows < ActiveRecord::Migration
  def change
    create_table :windows do |t|
      t.string :brandname
      t.belongs_to :manufacturer, index: true
      t.decimal :layers
      t.belongs_to :materials, index: true
      t.decimal :price
      t.decimal :height
      t.decimal :width

      t.timestamps
    end
  end
end
