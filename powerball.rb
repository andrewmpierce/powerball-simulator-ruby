require './ticket'
require 'pry'

def check_intersection(array1, array2)
  intersection = array1[0..5] & array2[0..5]
  return intersection.length
end


def check_powerball(array1, array2)
  if array1[-1] == array2[-1]
    return true
  else
    return false
  end
end


def check_winnings(array1, array2)
  intersection = check_intersection(array1, array2)
  powerball = check_powerball(array1, array2)
  if intersection == 5 && powerball
    return 40000000
  elsif intersection == 5
    return 1000000
  elsif intersection == 4 && powerball
    return 50000
  elsif intersection == 4
    return 100
  elsif intersection == 3 && powerball
    return 100
  elsif intersection == 3
    return 7
  elsif intersection == 2 && powerball
    return 7
  elsif powerball
    return 4
  else
    return 0
  end
end

def drawing(n, winning_ticket)
  drawing_winnings = 0
  n.times do |x|
    ticket = Ticket.new
    drawing_winnings += check_winnings(winning_ticket, ticket.numbers)
  end 
  return drawing_winnings
end

winning_ticket = Ticket.new
drawing(10, winning_ticket.numbers)




def run_sim
end
