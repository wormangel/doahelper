class CreateCostumes < ActiveRecord::Migration
  def change
    create_table :costumes do |t|
      t.references :character
      t.integer :number

      t.timestamps null: false
    end
  end
end
