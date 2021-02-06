class Location < ApplicationRecord
  has_many :positions
  has_many :shifts, through: :positions
end
