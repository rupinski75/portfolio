class AddGalleryReferenceToPictures < ActiveRecord::Migration[5.2]
  def change
    add_reference :pictures, :gallery, foreign_key: true
  end
end
