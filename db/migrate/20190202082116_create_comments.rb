class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :body
      t.integer :resource_id
      t.integer :resource_type

      t.timestamps
    end
  end
end
