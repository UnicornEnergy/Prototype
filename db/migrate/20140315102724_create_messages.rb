class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.belongs_to :customer, index: true
      t.text :message

      t.timestamps
    end
  end
end
