class Package < ActiveRecord::Base
  has_one :ticket
  has_many :attractions
  has_one :hotel
  belongs_to :user
  # acts_as_gmappable
  # def gmaps4rails_infowindow
  #   "<h1>'#{self.name}'</h1>"
  # end
end
