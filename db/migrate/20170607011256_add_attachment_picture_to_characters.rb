class AddAttachmentPictureToCharacters < ActiveRecord::Migration
  def self.up
    change_table :characters do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :characters, :picture
  end
end
