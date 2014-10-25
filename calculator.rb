# Request user input
def say(message)
	puts "=> #{message}"
end


# Check user's numerical input is a valid number
def check_num(i)
	i.to_i.to_s == i || i.to_f.to_s == i
end

def user_input 
	begin
		input = gets.chomp
		puts "That is not a valid input. Please enter a number." unless check_num(input)
	end until check_num(input)
	return input
end


# Request first numerical input from user
say "Enter your first number."
n1 = user_input


# Request an mathematical operation from user
say "Would you like to add, subtract, multiply or divide?"
operator = gets.chomp
operator_check = false


# Check that user's requested operator is a valid operator 
while operator_check == false 
	if operator == 'add'
	break
	elsif operator == 'subtract'
	break
	elsif operator == 'multiply'
	break
	elsif operator == 'divide'
	break
	# Notify user that the requested operator is invalid
	else
		puts "Sorry, that is not a valid option for this program. Please choose add, subtract, multiply or divide." 
		operator = gets.chomp
		operator_check == false
	end
end


# Request second numerical input from user
say "Enter your second number."
n2 = user_input


# Use conditions and operator to perform calculation function
case
	when operator == 'add'
		result = n1.to_f + n2.to_f
		operator = "plus"
	when operator == 'subtract'
		result = n1.to_f - n2.to_f
		operator = "minus"
	when operator == 'multiply'
		result = n1.to_f * n2.to_f
		operator = "multiplied by"
	when operator == 'divide'
		result = n1.to_f / n2.to_f
		operator = "divided by"
	else
		puts 
end


# Output result
puts n1 + " " + operator + " " + n2 + " " + "= " "#{result}"
