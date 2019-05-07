def is_a_multiple_of_prime(prime_array, num)
  flag = false
  for prime in prime_array
    if num % prime == 0 && num != prime
      flag = true
    end
    break if flag
  end
  flag
end

def create_prime_array(count)
  array_of_primes = [2]
  until array_of_primes.length == count
    current_number = array_of_primes[-1] + 1
    while is_a_multiple_of_prime(array_of_primes, current_number)
      current_number += 1
    end
    array_of_primes << current_number
  end
  array_of_primes
end

