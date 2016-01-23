require './ticket'


def check_intersection(array1, array2)
  intersection = array1[0..5] & array2[0..5]
  return intersection.length
end


def check_powerball(array1, array2)
  if array1[-1] == array2[-1]
    return True
  else
    return False
end


def check_winnings(array1, array2)
  intersection = check_intersection(array1, array2)
  powerball = check_powerball(array1, array2)
  if intersection == 5 && powerball

end







def run_sim
end
