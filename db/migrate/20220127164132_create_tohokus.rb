class CreateTohokus < ActiveRecord::Migration[5.2]
  def change
    create_table :tohokus do |t|
      
      

      t.timestamps
    end
  end
end
