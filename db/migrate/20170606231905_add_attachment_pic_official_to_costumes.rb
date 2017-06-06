class AddAttachmentPicOfficialToCostumes < ActiveRecord::Migration
  def self.up
    change_table :costumes do |t|
      t.attachment :pic_official
    end
  end

  def self.down
    remove_attachment :costumes, :pic_official
  end
end
