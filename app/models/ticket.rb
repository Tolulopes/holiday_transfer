class Ticket < ActiveRecord::Base
  belongs_to :package
  belongs_to :destination
end
