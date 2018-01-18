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
  
  player1 = array[0]
  player2 = array[1]
  res1 = array[0][1]
  res2 = array[1][1]
  
  case res1
    when "R" then res2 == 'P' ? player2: player1
    when "P" then res2 == 'S' ? player2: player1
    when "S" then res2 == 'R' ? player2: player1
  end
end
 
arr = [["Armando", "S"],["Dave", "R"]] 
p rps_game_winner(arr)
