require_relative './lib/input_checker.rb'
require_relative './lib/sieve_of_eratosthenes'
require_relative './lib/multiplication_table'

def prompt
  puts "Up to how many prime numbers would you like me to calculate the multiplication table of? (default: 10)"
end

def render(array1, array2)
  MultiplicationTable.new(array1, array2).print_table
end

def input(user_input)
  if is_valid(user_input)
    prime_array = create_prime_array(user_input.to_i)
    render(prime_array, prime_array)
  elsif user_input === ""
    prime_array = create_prime_array(10)
    render(prime_array, prime_array)
  else
    print "Input error. Please enter a natural number.\n"
    prompt
    input(gets.chomp)
  end
end

prompt
input(gets.chomp)
