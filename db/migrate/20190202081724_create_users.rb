class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.string :name
      t.bit :is_confirmed
      t.integer :user_type

      t.timestamps
    end
  end
end
