class ScoresController < ApplicationController
  def dashboard
    
    @maximum_score = 12.0
    
    @one_week_score = get_score_for_period(1) 
    @two_week_score = get_score_for_period(2) 
    @four_week_score = get_score_for_period(4) 
    
    
    
  end
  
  private
  
  def get_score_for_period(period_in_weeks)
    if current_user
      the_records = current_user.days.find(:all, :conditions => ['created_at > ?', period_in_weeks.week.ago])
    
      @the_score = 0
      
      the_records.each do |rec|
        @the_score = @the_score + rec.score  
      end 
      
      @the_score
      
    else
      
      0.0
      
    end
    
  end 
  
end
