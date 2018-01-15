class WrongNumberOfPlayersError < StandardError 
  def message 
    "Wrong number of players" 
  end 
end 

class NotSuchStrategyError < StandardError 
  def message 
    "Not such strategy error" 
  end 
end 

def rps_game_winner(array) 
  if array.count > 2 
    raise WrongNumberOfPlayersError 
  end 
  
  array.collect { |state|  
    if (state[1] =~ /[RPS]/) != 0
      raise NotSuchStrategyError
      next
    end
  }
  
  case array[0][1]
    when "R"
	  case array[1][1]
	    when "R"
		  print array[0]
	    when "P"
		  print array[1]
	    when "S"
		  print array[0]
	  end
	when "P"
	  case array[1][1]
	    when "R"
		  print array[0]
	    when "P"
		  print array[0]
	    when "S"
		  print array[1]
	  end
	when "S"
	  case array[1][1]
	    when "R"
		  print array[1]
	    when "P"
		  print array[0]
	    when "S"
		  print array[0]
	  end
	end
  end
 
arr = [["Armando", "R"],["Dave", "R"]] 
rps_game_winner(arr)
