module ApplicationHelper
  def flash_class(level)
  case level
  when :notice then 'info'
  when :error then 'error'
  when :alert then 'warning'
  end
  end
  
  def no_need
    "Don't need"
  end
  
  def nice
    "Nice to have"  
  end
  
  def must
    "Must have"
  end
  
  
  def big_1
    "biggest problem"   
  end

  def big_2
    "next biggest problem"   
  end

  def big_3
    "third biggest problem"   
  end  
  
  
end
