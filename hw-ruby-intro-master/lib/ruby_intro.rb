# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  s=0
  if arr.length > 0
      arr.each do |x|
        s+=x
      end
      return s
    else return 0
      end
end

def max_2_sum arr
  max1 = 0
  max2 = 0
  sum = 0
    if arr.length > 1
      max1 = arr.sort[-1]
      max2 = arr.sort[-2]
      sum = max1 + max2
          return sum
    elsif arr.length == 1
        return arr
      else
        return 0
      end
end

def sum_to_n? arr, n
    result = false
    if arr.length > 1
        for i in 1..arr.length-1
        for j in 0..i -1
          if arr[j] + arr[i] == n
            result = true
            break
          end
        end
      end
    end
    return result
end

# Part 2

def hello(name)
	return "Hello, "+name
end

def starts_with_consonant? s
	if s.length == 0
		return false
	end
	consonants = "bcdfghjklmnpqrstvwxyz"
	firstChar = s[0].downcase
	chars = consonants.split("")
	chars.each do |x|
		if (x == firstChar)
		  return true
		end
	end
	return false

end

def binary_multiple_of_4? s
	myString = s.to_s

	if myString.length ==0
	  return false
	end

	if myString[myString.length-1] == "1"
	  return false
	end
	splitStr = myString.split("")
	splitStr.each do |x|
	  if x.to_s != "1"
		if x.to_s != "0"
		  return false
		end
	  end
	end
	return true
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn,price)
    if isbn.empty? || price <= 0
      raise ArgumentError, "Invalid ISBN or price. Please enter a valid ISBN and price."
    end

    @isbn = isbn
    @price = price
  end

  def price_as_string
    "$#{'%.2f' % @price}"
  end
end


