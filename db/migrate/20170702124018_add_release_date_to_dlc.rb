class AddReleaseDateToDlc < ActiveRecord::Migration
  def change
    add_column :dlcs, :release_date, :date
  end
end
