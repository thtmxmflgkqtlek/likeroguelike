class CreateWeapons < ActiveRecord::Migration
  def change
    create_table :weapons do |t|
      t.string :name
      t.integer :health
      t.integer :attack
      t.integer :defense

      t.timestamps null: false
    end
  end
end
