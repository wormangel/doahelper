class Costume < ActiveRecord::Base
  belongs_to :character

  has_attached_file :pic_official, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  has_attached_file :pic_ingame, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :pic_official, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  validates_attachment_content_type :pic_ingame, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

end
