class CreateBrings < ActiveRecord::Migration
  def change
    create_table :brings do |t|
      t.integer :user_id
      t.integer :weapon_id

      t.timestamps null: false
    end
  end
end
