class CreateDlcs < ActiveRecord::Migration
  def change
    create_table :dlcs do |t|
      t.string :name
      t.decimal :price

      t.timestamps null: false
    end
  end
end
