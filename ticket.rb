class Ticket

  def initialize
    possible_whites = (1..69).to_a
    possible_powerballs = (1..26).to_a
    lotto_ticket = possible_whites.sample(5)
    lotto_ticket = lotto_ticket.push(possible_powerballs.sample())
    puts "Your ticket is #{lotto_ticket}"
    return lotto_ticket
  end

end
