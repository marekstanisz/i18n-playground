class Aardvark < ActiveRecord::Base
  validates :name, :weight, :length, :height, presence: true
end
