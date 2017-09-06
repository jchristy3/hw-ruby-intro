# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  x = 0
  arr.each { |a| x += a } if arr.all? { |i| i.is_a?(Integer)}
  return x
end

def max_2_sum arr
  x = 0
  y = 0
  if arr.all? { |i| i.is_a?(Integer)} && arr.length > 0
    arr.sort! { |a, b| b <=> a }
    x = arr[0]
     if arr.length > 1 
       y = arr[1]
      end
  end
  return x + y
end

def sum_to_n? arr, n
  !!arr.combination(2).detect { |a, b| a + b == n }
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  c = s.downcase.split(//)
  v = ['a', 'e', 'i', 'o', 'u']
  f = ('a'..'z').to_a
  !v.detect { |a| a == c[0] or !f.detect { |l| l == c[0]}}
end

def binary_multiple_of_4? s
  b = s.split(//)
  if b.all? { |n| n == 0 or n == 1 }
    if (b[-1] == 0 and b[-2] == 0)
      return true
    else
      return false
    end
  else
    return false
  end
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    @isbn = isbn
    @p = price
  end
  
  def ArgumentError
    assert raises ArgumentError do
      BookInStock.new("", <= 0)
    end
    
    def isbn
      @isbn
    end
    
    def isbn(val)
      isbn = val
    end
    
    def price
      @price
    end
    
    def price(val)
      price = val
    end
    
end
