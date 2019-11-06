def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
  
  row_ind = 0 
  new_array = []
  while row_ind < src.count do 
    new_array << "I love #{src[row_ind][0]} and #{src[row_ind][1]} on my pizza"
    row_ind += 1 
  end
  return new_array
  
end

def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  
  row_index = 0 
  new_array = []
  while row_index < src.count do
    if src[row_index][0] < src[row_index][1]
      new_array << src[row_index][1]
    else 
      new_array << src[row_index][0]
    end 
    row_index += 1 
  end 
  return new_array
end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
  
  row_index = 0 
  total_number = 0 
  while row_index < src.count do
    if (src[row_index][0] % 2 == 0) and (src[row_index][1] % 2 == 0) 
      total_number = total_number + src[row_index][0] + src[row_index][1]
    end 
    row_index += 1 
  end 
  
  return total_number
end
