# 1. string interpolation vs concatenation
# 2. extract repetitive logic to methods
# 3. keep track of variable types (class)

require 'pry'

def say(msg)
	puts "=> #{msg}"
end

puts "What's the first number?"
num1 = gets.chomp

puts "What's the second number?"
num2 = gets.chomp

puts "1) add 2) subtract 3) multiply 4) divide"
operator = gets.chomp

if operator == '1'
	result = num1.to_i + num2.to_i
elsif operator == '2'
	result = num1.to_i - num2.to_i
elsif operator == '3'
	result = num1.to_i * num2.to_i
else operator == '4'
	result = num1.to_f / num2.to_f
end

puts "Result is #{result}"