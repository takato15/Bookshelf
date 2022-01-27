class CreateChugokus < ActiveRecord::Migration[5.2]
  def change
    create_table :chugokus do |t|

      t.timestamps
    end
  end
end
