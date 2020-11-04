class ChangeDateInCourseAppointments < ActiveRecord::Migration[6.0]
  def change
    remove_column :course_appointments, :course_date
    add_column :course_appointments, :course_date, :string
  end
end
