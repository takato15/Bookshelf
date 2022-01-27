class CreateKantos < ActiveRecord::Migration[5.2]
  def change
    create_table :kantos do |t|

      t.timestamps
    end
  end
end
