class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.integer :is_confirmed, default: 0
      t.integer :user_type, default: 0

      t.timestamps
    end
  end
end
