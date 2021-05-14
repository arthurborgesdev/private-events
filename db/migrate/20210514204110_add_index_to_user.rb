class AddIndexToUser < ActiveRecord::Migration[6.1]
  def change
    add_index :attendance_lists, :scheduled_events
    add_index :events, :author_id
  end
end
