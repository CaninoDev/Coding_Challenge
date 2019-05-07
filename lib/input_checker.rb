# Check user input if is a natural number
def is_integer(input)
  !!Integer(input, 10)
rescue ArgumentError, TypeError
  false
end

def is_natural(input)
  input_integer = input.to_i
  if input_integer.abs == input_integer
    true
  else
    false
  end
end

def is_valid(input)
  if is_integer(input) && is_natural(input)
    true
  else
    false
  end
end



