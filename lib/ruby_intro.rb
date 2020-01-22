# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0;
  if(arr.length() == 0)
    sum
  else
      for x in arr
      sum += x
      end
    sum
  end
end

def max_2_sum arr
  sum = 0
  if(arr.length() == 0)
      return sum
  elsif (arr.length() == 1)
      return sum = arr[0]
  end
    arr = arr.sort
    return sum = arr[arr.length() - 1] + arr[arr.length() - 2] 
end

def sum_to_n? arr, n
  if(arr.length() == 0 || arr.length() == 1)
      return false
  else
    for x in arr 
      for y in 2..arr.length()-1
        if (x+y == n)
          return true
        end
      end
    end
  return false;
  end
end
# Part 2

def hello(name)
  return "Hello, " + name;
end

def starts_with_consonant? s
  arr = ['b','c','d','f','g','h','j','k','l','m','n','p','r','s','t','v','w','x','y','z',
  'B','C','D','F','G','H','J','K','L','M','N','P','R','S','T','V','W','X','Y','Z']
for x in arr
  if(x == s[0])
    return true
  end
end
return false
end

def binary_multiple_of_4? s
  if s =~ /^[0-1]+$/
    num = s.to_i
    if(num % 4 == 0 )
      return true
    else
      return false
    end
  end
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price
  def initialize(i, p)
    raise ArgumentError if  i == nil || i.length() == 0
    raise ArgumentError if p <= 0
    
    @isbn = i
    @price = p
  end
  def price_as_string
    "$%0.2f" % @price
  end
end
