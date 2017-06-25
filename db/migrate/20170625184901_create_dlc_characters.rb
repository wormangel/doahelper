class CreateDlcCharacters < ActiveRecord::Migration
  def change
    create_table :dlc_characters do |t|
      t.references :dlc, index: true, foreign_key: true
      t.references :character, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
