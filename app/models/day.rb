class Day < ActiveRecord::Base
  belongs_to :user
  
  def score
    score = 0
    score = score + self.food_veg_actual
    score = score + self.food_junk_actual
    score = score + self.hours_sleep_actual
    score = score + self.exercise_actual
    score = score + self.smoke_actual
    score = score + self.drinks_actual
  end
  
end
