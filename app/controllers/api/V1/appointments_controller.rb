class Api::V1::AppointmentsController < ApplicationController
  def create
    @appointment = CourseAppointment.create(appointment_params)
    if @appointment.valid?
      render json: { error: @appointment }
    else
      render json: { error: @appointment.errors.full_messages[0] }
    end
  end
  def destroy
    @appointment = CourseAppointment.where(user_id: logged_in_user.id, course_id: params[:id])
    if @appointment.destroy_all
      render json: { course: logged_in_user.courses }
    else
      render json: { error: @appointment.errors.full_messages[0] }
    end
  end

  private

  def appointment_params
    params.permit(:user_id, :course_id, :course_date)
  end
end
