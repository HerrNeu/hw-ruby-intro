# When done, submit this entire file to the autograder.

# Part 1

def sum arr
	arr.inject(0){|sum,x| sum + x }
end

def max_2_sum arr
	arr.max(2).inject(0) {|sum, x| sum + x}
end

def sum_to_n? arr, n
	if arr.length < 2
		return false
	else
		arr.combination(2).any? {|couple| sum(couple) == n }
	end
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  /\A[\w&&[^AEIOUaeiou0-9]]/.match(s)
end

def binary_multiple_of_4? s
	if /\A[01]+\Z/.match(s)
		s.to_i(2) % 4 == 0
	else return false
	end
end

# Part 3

class BookInStock
		attr_accessor :isbn
		attr_accessor :price

	def initialize(isbn, price)
	    raise ArgumentError if (isbn.empty? || price <= 0)
	    @isbn = isbn
	    @price = price
	end

	def price_as_string
		return "$%.2f" % price
  	end
end