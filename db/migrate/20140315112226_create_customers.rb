class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.belongs_to :salutation, index: true
      t.string :firstName
      t.string :lastName

      t.timestamps
    end
  end
end
