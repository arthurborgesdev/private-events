class AddUserToEvent < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :author_id, :integer
    add_column :events, :attendant_id, :integer
  end
end
