
# frozen_string_literal: true

# Part 1

def sum(arr)
  arr.sum
end

def max_2_sum(arr)
  arr.sort[-1].to_i + arr.sort[-2].to_i
end

def sum_to_n?(arr, number)
  if arr.count() <= 1
    return false
  end
  bool_arr = []
  arr.each_with_index {|n1, i| arr.each_with_index {|n2, j| bool_arr += [((n1 + n2 == number) & (i != j))]}}
  bool_arr.include? true
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant?(string)
  string =~ /^(?=[a-z])(?=[^aeiou])/i
end

def binary_multiple_of_4?(string)
  if string.length == 0
    return false
  elsif string =~ /[^01]/i
    return false
  elsif string.to_i.remainder(4) != 0
    return false
  end
  true
end

# Part 3

# Object representing a book
class BookInStock
  def initialize(isbn, price)
    raise ArgumentError.new() if isbn.length == 0
    raise ArgumentError.new() if price <= 0
    @isbn = isbn
    @price = price
  end

  def isbn
    @isbn
  end

  def isbn=(isbn)
    @isbn = isbn
  end

  def price
    @price
  end

  def price=(price)
    @price = price
  end

  def price_as_string
    "$" + "%.2f" % @price
  end

end