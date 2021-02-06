# Shows the registered days
class DaysController < ApplicationController
  def index
    @days = Day.order(starts_at: :asc)
               .where('starts_at >= ?', Time.zone.now.beginning_of_day)
  end

  def show
    @day = Day.find(params[:id])
    @locations = Location.all
    @shift = Shift.new
  end
end
