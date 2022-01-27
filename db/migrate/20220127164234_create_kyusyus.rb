class CreateKyusyus < ActiveRecord::Migration[5.2]
  def change
    create_table :kyusyus do |t|

      t.timestamps
    end
  end
end
