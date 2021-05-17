class AddEventToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :attending_id, :integer
  end
end
