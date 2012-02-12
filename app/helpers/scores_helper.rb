module ScoresHelper
  
  def get_box_color(score)
    threshold = 12
    
    if score >= (threshold/ 2)
      'green'
    else
      'red'
    end
  end
end
