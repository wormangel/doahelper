class CreateDlcCostumes < ActiveRecord::Migration
  def change
    create_table :dlc_costumes do |t|
      t.references :dlc, index: true, foreign_key: true
      t.references :costume, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
