require "sieve_of_eratosthenes"

describe "#is_a_multiple_of_prime" do
  context "given a number that is a multiple of primes less than itself" do
    it "returns true" do
      prime_array = [2, 3, 5, 7, 9, 11, 13, 17, 19, 23]
      expect(is_a_multiple_of_prime(prime_array, 28)).to eql(true)
    end
  end
end
describe "#is_a_multiple_of_prime" do
  context "given a number that is a NOT a multiple of primes less than itself" do
    it "returns true" do
      prime_array = [2, 3, 5, 7, 9, 11, 13, 17, 19, 23]
      expect(is_a_multiple_of_prime(prime_array, 89)).to eql(false)
    end
  end
end
describe "#create_prime_array" do
  context "given 11, create an array of primes of size 11" do
    it "returns [2, 3, 5, 7 ,11, 13, 17, 19, 23, 29, 31]" do
      expect(create_prime_array(11)).to match_array([2, 3, 5, 7 ,11, 13, 17, 19, 23, 29, 31])
    end
  end
end
