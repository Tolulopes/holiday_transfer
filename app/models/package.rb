class Package < ActiveRecord::Base
  has_one :ticket
  belongs_to :user
end
