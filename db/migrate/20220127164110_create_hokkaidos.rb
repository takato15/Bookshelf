class CreateHokkaidos < ActiveRecord::Migration[5.2]
  def change
    create_table :hokkaidos do |t|

      t.timestamps
    end
  end
end
