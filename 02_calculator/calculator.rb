#write your code here
def add(number1, number2)
	number1 + number2
end

def subtract(number1, number2)
	number1 - number2
end

def sum(numbers)
	sum = 0
	numbers.each do |i|
		sum += i
	end
	sum
end

def multiply(numbers)
	value = 1
	numbers.each do |i|
		value *= i
	end
	value
end

def power(number1, number2)
	number1 ** number2
end

def factorial(number)
	if number == 0
		return 1
	else
		value = number
		while number > 1
			number -= 1
			value *= number
		end
	end
	value
end