class AddIndexToEvent < ActiveRecord::Migration[6.1]
  def change
    add_index :attendance_lists, :attendants
  end
end
