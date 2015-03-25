class Attraction < ActiveRecord::Base
  belongs_to :package
  geocoded_by :location
  after_validation :geocode
end
