class ShiftsController < ApplicationController
  def create
    Shift.create(shift_params)
    flash.notice = 'Shift added'
    redirect_to days_path
  end

  def shift_params
    params.require(:shift).permit(:name, :day_id, :position_id)
  end
end
