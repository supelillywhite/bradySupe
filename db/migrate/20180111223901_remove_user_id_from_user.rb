class RemoveUserIdFromUser < ActiveRecord::Migration[5.1]
  def self.down
      remove_column :users, :user_id
  end
end
