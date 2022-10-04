class AddGroupIdToUsers < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :group, null: true, foreign_key: true
  end
end
