class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :subject
      t.text :message
      t.integer :friend_id
      t.references :user, index: true

      t.timestamps
    end
  end
end
