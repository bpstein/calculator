# Request user input
def say(message)
	puts "=> #{message}"
end

# Validate to not be zero
def divide_by_zero
	while operator == 'divide'
		if n2 == 0
		puts "You cannot divide by zero. Please enter another number."
		else n2 == gets.chomp
		end
	end
end

say "Enter your first number."
n1 = gets.chomp


say "Enter your second number."
n2 = gets.chomp

say "Would you like to add, subtract, multiply or divide?"
operator = gets.chomp



# Use conditions and operator to perform calculation function
if operator == 'add'
	result = n1.to_f + n2.to_f
	operator = "plus"
elsif operator == 'subtract'
	result = n1.to_f - n2.to_f
	operator = "minus"
elsif operator == 'multiply'
	result = n1.to_f * n2.to_f
	operator = "multiplied by"
else operator == 'divide'
	divide_by_zero(n2)
	result = n1.to_f / n2.to_f
	operator = "divided by"
end

# Output result
puts n1 + " " + operator + " " + n2 + " " + "= " "#{result}"

