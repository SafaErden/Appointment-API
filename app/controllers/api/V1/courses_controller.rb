class Api::V1::CoursesController < ApplicationController
    def index
        @courses = Course.all

        if @courses
            render json: { course: @courses}
        else
            render json: { error: 'Something went wrong' }
        end
      end
      
  
    def show
        @course = Course.find_by(course_params)

        if @course
            render json: { course: @course}
        else
            render json: { error: 'Something went wrong' }
        end
    end

    private

    def course_params
        params.require(:course).permit(:id)
    end
  end