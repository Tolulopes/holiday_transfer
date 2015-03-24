class Package < ActiveRecord::Base
  has_one :ticket
  has_many :attractions
  belongs_to :user
end
