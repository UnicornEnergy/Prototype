class CreateCalculates < ActiveRecord::Migration
  def change
    create_table :calculates do |t|

      t.timestamps
    end
  end
end
