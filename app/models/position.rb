class Position < ApplicationRecord
  belongs_to :location
  has_many :shifts
  has_many :days, through: :shifts

  def taken?(day)
    shifts.where(day: day).count.positive?
  end

  def taken(day)
    shifts.find_by(day: day)
  end
end
