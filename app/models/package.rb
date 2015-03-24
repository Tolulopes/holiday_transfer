class Package < ActiveRecord::Base
  has_one :ticket
  has_many :attractions
  has_one :hotel
  belongs_to :user
end
