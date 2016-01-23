require './ticket'


def check_intersection(array1, array2)
  intersection = array1 & array2
  return intersection.length
end
