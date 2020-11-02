class AddTimezoneToAppointments < ActiveRecord::Migration[6.0]
  def change
    add_column :course_appointments, :timezone, :integer
    create_table :timezones do |t|
      t.string :zone
      t.timestamps
    end
  end
end
