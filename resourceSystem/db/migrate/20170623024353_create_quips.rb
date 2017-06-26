class CreateQuips < ActiveRecord::Migration
  def change
    create_table :quips do |t|
      t.integer :user_id
      t.integer :health
      t.integer :attack
      t.integer :defense

      t.timestamps null: false
    end
  end
end
