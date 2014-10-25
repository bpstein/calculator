# 1. string interpolation vs concatenation
# 2. extract repetitive logic to methods
# 3. keep track of variable types (class)
# 4. variable scope determined by do...end; outer scope vars available to inner scope, but not vice versa
# 5. pass by ref versus pass by value; if method mutates caller, outer object is modified

# require 'pry'

# def say(msg)
# 	puts "=> #{msg}"
# end

# def get_input
# 	begin

# puts "What's the first number?"
# num1 = gets.chomp

# puts "What's the second number?"
# num2 = gets.chomp

# puts "1) add 2) subtract 3) multiply 4) divide"
# operator = gets.chomp

# if operator == '1'
# 	result = num1.to_i + num2.to_i
# elsif operator == '2'
# 	result = num1.to_i - num2.to_i
# elsif operator == '3'
# 	result = num1.to_i * num2.to_i
# else operator == '4'
# 	result = num1.to_f / num2.to_f
# end

# puts "Result is #{result}"


# Request user input
def say(message)
	puts "=> #{message}"
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
elsif operator == 'subtract'
	result = n1.to_f - n2.to_f
elsif operator == 'multiply'
	result = n1.to_f * n2.to_f
else operator == 'divide'
	result = n1.to_f / n2.to_f
end

# Output result
puts "#{result}"

