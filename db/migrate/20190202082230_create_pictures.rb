class CreatePictures < ActiveRecord::Migration[5.2]
  def change
    create_table :pictures do |t|
      t.string :size
      t.string :image_link
      t.text :description

      t.timestamps
    end
  end
end
