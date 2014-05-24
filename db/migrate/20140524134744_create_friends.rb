class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
    	t.string :request
    	t.references :user, index: true
    	t.references :friend, index: true

      t.timestamps
    end
  end
end
