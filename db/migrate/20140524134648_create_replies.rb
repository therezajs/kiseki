class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.references :message, index: true
      t.references :user, index: true
      t.text :reply

      t.timestamps
    end
  end
end
