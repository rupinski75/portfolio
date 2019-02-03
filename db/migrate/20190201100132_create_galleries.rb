class CreateGalleries < ActiveRecord::Migration[5.2]
  def change
    create_table :galleries do |t|
      t.integer :user_id
      t.string :title
      t.string :description
      t.string :thumb_image

      t.timestamps
    end
  end
end
