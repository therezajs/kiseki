class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.references :user, index: true
      t.references :post, index: true
      t.references :message, index: true
      t.string :name
      t.text :description
      t.string :picture
      t.string :avatar

      t.timestamps
    end
  end
end
