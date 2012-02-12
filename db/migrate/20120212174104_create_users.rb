class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :food_veg_target
      t.integer :food_junk_target
      t.float :hours_sleep_target
      t.integer :weekly_exercise_target
      t.float :smoke_total
      t.integer :weekly_drinks_target

      t.timestamps
    end
  end
end
