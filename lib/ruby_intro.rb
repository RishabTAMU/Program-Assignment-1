# frozen_string_literal: true

# Part 1
#Rishab Nair
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
  return "Hello, #{name}"
end

def starts_with_consonant?(string)
  # YOUR CODE HERE
  if string =~ /\A[aeiou]/i
    return false
  elsif string =~ /[bcdghjklmnpqrstvwxyz]/i
    return true
  else 
    return false
  end
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
  
  string_int = string.to_i
  
  if string.length == 0
    return false
  end
  
  if string_int % 4 == 0 
    for x in 0...string.length
      if string[x] != "1" and string[x] != "0"
        return false
      else
        return true
      end
    end
  else
    return false
  end
  
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
  
  def initialize(isbn, price)
    #raises error is size is 0 or price is  or less than 0
    if isbn.size == 0
      raise ArgumentError
    end
    
    if price <= 0
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end

  #source which helped: https://www.geeksforgeeks.org/ruby-getters-and-setters-method/
  #Get Method for isbn
  def isbn
    @isbn
  end
  
  #set method for isbn
  def isbn=(isbn)
    @isbn = isbn
  end
  
  #get method for price
  def price
    @price
  end
  
  #set method for price
  def price=(price)
    @price = price
  end
  
  #price format is in USD
  def price_as_string
    #adds $ sign and adds two decimal values
    format("$%.2f", @price)
  end
  
end
