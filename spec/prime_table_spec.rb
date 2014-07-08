require_relative '../prime_table.rb'
require_relative '../lib/prime_generator.rb'
require_relative '../lib/sieve_of_eratosthenes.rb'


describe PrimeTable do
  describe "display" do
    it "prints out the multiplication table of first n primes" do
      prime_table = PrimeTable.new(3, SieveOfEratosthenes)
      prime_table.display
    end
  end
end
