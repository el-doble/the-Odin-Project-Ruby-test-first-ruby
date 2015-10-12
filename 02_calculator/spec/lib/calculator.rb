def add(a, b)
	a + b
end

def subtract(a, b)
	a - b
end


def sum(array)
	array.empty? ? 0 : array.reduce(:+)
end

def multiply(*numbers)
	numbers.reduce(:*)
end

def power(a, b)
	a ** b
end

def factorial(number)
	number == 0 ? 1 : (1..number).reduce(:*)
end

puts factorial(0)