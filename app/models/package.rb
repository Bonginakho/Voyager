class Package < ApplicationRecord
  belongs_to :flight
  belongs_to :hotel
end
