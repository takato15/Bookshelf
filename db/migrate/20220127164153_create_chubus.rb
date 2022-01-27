class CreateChubus < ActiveRecord::Migration[5.2]
  def change
    create_table :chubus do |t|

      t.timestamps
    end
  end
end
