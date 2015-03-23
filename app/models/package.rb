class Package < ActiveRecord::Base
  has_many :tickets
  belongs_to :user
end
