class RenameFriendId < ActiveRecord::Migration
  def change
  	rename_column :messages, :friend_id, :writer_id
  end
end
