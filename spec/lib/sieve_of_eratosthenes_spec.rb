require_relative '../../lib/sieve_of_eratosthenes.rb'

describe SieveOfEratosthenes do
  describe "generate" do
    it "returns an empty array when number of primes N is 0" do
      sieve = SieveOfEratosthenes.new(0)
      expect(sieve.generate).to be_empty
    end

    it "returns 2 when required number of primes N is 1" do
      sieve = SieveOfEratosthenes.new(1)
      expect(sieve.generate).to match_array [2]
    end

    it "returns 10 prime numbers when required number of primes N is 10" do
      sieve = SieveOfEratosthenes.new(10)
      expect(sieve.generate).to match_array [2,3,5,7,11,13,17,19,23, 29]
    end

    it "generates only prime number" do
      sieve = SieveOfEratosthenes.new(1000)
      primes = sieve.generate
      random_prime = primes[rand(primes.length - 1)]
      expect(primes.any?{|p| random_prime % p == 0 if random_prime != p}).to eq false
    end
  end
end
