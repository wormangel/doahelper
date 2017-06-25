class DlcCharacter < ActiveRecord::Base
  belongs_to :dlc
  belongs_to :character
end
