class Trip < ApplicationRecord
  belongs_to :user
  belongs_to :package
  belongs_to :destination
end
