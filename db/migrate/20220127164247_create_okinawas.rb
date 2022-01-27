class CreateOkinawas < ActiveRecord::Migration[5.2]
  def change
    create_table :okinawas do |t|

      t.timestamps
    end
  end
end
