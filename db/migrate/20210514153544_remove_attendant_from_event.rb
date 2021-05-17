class RemoveAttendantFromEvent < ActiveRecord::Migration[6.1]
  def change
    remove_column :events, :attendant_id, :integer
  end
end
