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

def drawing(n_tickets, winning_ticket)
  drawing_winnings = 0
  n_tickets.times do |x|
    ticket = Ticket.new
    drawing_winnings += check_winnings(winning_ticket, ticket.numbers)
  end
  return drawing_winnings
end

def trials(n_trials, n_tickets)
  winning_ticket = Ticket.new
  total_winnings = 0
  n_trials.times do |x|
    total_winnings += drawing(n_tickets, winning_ticket.numbers)
    puts "This is drawing\# #{x+1}"
    puts "Your winnings so far are #{total_winnings} dollars!"
  end
end

def run_sim
  puts "Let's play the lottery."
  puts "How many tickets do you want to buy per drawing?"
  num_tickets = gets
  num_tickets = num_tickets.chomp.to_i
  puts "How many drawings do you want to play for?"
  num_trials = gets
  num_trials = num_trials.chomp.to_i
  trials(num_trials, num_tickets)
end

run_sim
