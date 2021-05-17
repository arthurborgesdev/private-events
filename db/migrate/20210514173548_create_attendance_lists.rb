class CreateAttendanceLists < ActiveRecord::Migration[6.1]
  def change
    create_table :attendance_lists do |t|
      t.timestamps

      t.integer :scheduled_event_id
      t.integer :event_attendant_id
    end
  end
end
