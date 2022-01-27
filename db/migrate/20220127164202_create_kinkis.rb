class CreateKinkis < ActiveRecord::Migration[5.2]
  def change
    create_table :kinkis do |t|

      t.timestamps
    end
  end
end
