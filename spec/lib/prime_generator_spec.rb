require_relative '../../lib/prime_generator.rb'
require_relative '../../lib/sieve_of_eratosthenes.rb'

describe PrimeGenerator do
  describe "primes" do
    it "returns an array of primes" do
      expect(PrimeGenerator.new(10, SieveOfEratosthenes).primes).to eq [2,3,5,7,11,13,17,19,23,29]
    end
  end
end
