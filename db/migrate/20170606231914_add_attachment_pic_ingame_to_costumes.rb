class AddAttachmentPicIngameToCostumes < ActiveRecord::Migration
  def self.up
    change_table :costumes do |t|
      t.attachment :pic_ingame
    end
  end

  def self.down
    remove_attachment :costumes, :pic_ingame
  end
end
