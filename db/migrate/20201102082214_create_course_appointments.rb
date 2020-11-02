class CreateCourseAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :course_appointments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :course, null: false, foreign_key: true
      t.datetime :course_date, null: false
      t.timestamps
    end
  end
end
