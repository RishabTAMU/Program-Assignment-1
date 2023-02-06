# frozen_string_literal: true

# Part 1

def sum(arr)
  # YOUR CODE HERE
  total = 0
  
  #checks if array length is 0, if so return 0
  if arr.length == 0
    return 0
  end
  
  #for loop starting from 0 to end of array
  for x in 0...arr.length
    #adds all the element value in the array
    total += arr[x]
  end
  #returns total sum
  return total
end

def max_2_sum(arr)
  # YOUR CODE HERE
end

def sum_to_n?(arr, number)
  # YOUR CODE HERE
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant?(string)
  # YOUR CODE HERE
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
end
