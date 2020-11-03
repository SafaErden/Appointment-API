class Api::V1::AppointmentsController < ApplicationController
  def create
    @appointment = CourseAppointment.create(appointment_params)
    if @appointment.valid?
      render json: { error: @appointment }
    else
      render json: { error: @appointment.errors.full_messages[0] }
    end
  end

  private

  def appointment_params
    params.require(:appointment).permit(:user_id, :course_id, :course_date)
  end
end
