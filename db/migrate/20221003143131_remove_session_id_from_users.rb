class RemoveSessionIdFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :group_id, :integer
  end
end
