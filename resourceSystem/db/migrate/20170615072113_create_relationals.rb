class CreateRelationals < ActiveRecord::Migration
  def change
    create_table :relationals do |t|
      t.string :u_id
      t.string :r_id
      t.date :start_day
      t.date :end_day

      t.timestamps null: false
    end
  end
end
