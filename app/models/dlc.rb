class Dlc < ActiveRecord::Base
  has_many :dlc_characters
  has_many :dlc_costumes
  has_many :characters, through: :dlc_characters
  has_many :costumes, through: :dlc_costumes
end
