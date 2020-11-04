# rubocop:disable Layout/LineLength
class Api::V1::CoursesController < ApplicationController
  def index
    @courses = Course.all

    @uc = logged_in_user.courses.map(&:id)
    @result = @courses.filter do |c|
      c if @uc.exclude? c.id
    end

    if @result
      render json: { course: @result }
    else
      render json: { error: 'Something went wrong' }
    end
  end

  def show
    @course = Course.find_by(course_params)
    if @course
      render json: { course: @course }
    else
      render json: { error: 'Something went wrong' }
    end
  end

  def user_courses
    @courses = CourseAppointment.joins(:course).select('courses.*, course_appointments.course_date').where(user_id: logged_in_user.id)

    if @courses
      render json: { course: @courses, date: @date }
    else
      render json: { error: 'Something went wrong' }
    end
  end

  private

  def course_params
    params.require(:course).permit(:id)
  end
end
# rubocop:enable Layout/LineLength
