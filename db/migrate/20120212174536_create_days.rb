class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.integer :user_id
      t.integer :food_veg_actual
      t.integer :food_junk_actual
      t.float :hours_sleep_actual
      t.integer :exercise_actual
      t.integer :smoke_actual
      t.integer :drinks_actual

      t.timestamps
    end
  end
end
