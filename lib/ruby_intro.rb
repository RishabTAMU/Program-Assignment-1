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
  #checks if array is empty, if so return 0
  if arr.empty?
      return 0
  end
         
  #checks if there is 1 element in array, if so return that element
  if arr.length == 1
    return arr[0]
  end        
  
  #Sorts the array from descending order (Ex: 5,4,3,2,1)
  sorted_arr = arr.sort.reverse
  #returns the sum of the elements in the first two spots in the array
  return sorted_arr[0] + sorted_arr[1]
end

def sum_to_n?(arr, number)
  # YOUR CODE HERE
  
  #checks if array is empty, if so return false
  if arr.empty?
    return false
  end
  
  #checks if array only has one elemnent, if so return false
  if arr.length == 1
    return false
  end
  
  #uses a special function mentioned in Ruby
  #It will take two array elements and create array combination
  #then detect whether 2 (x and y) elements added = number 
  if arr.uniq.combination(2).detect {|x, y| x + y == number}
    return true
  else
    return false
  end
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
