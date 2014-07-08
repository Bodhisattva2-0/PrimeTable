require_relative '../../lib/prime_generator.rb'

describe PrimeGenerator do
  describe "generate" do
    it "returns an array of primes" do
      pending("Implement prime number generators")
      PrimeGenerator.new(10, SieveOfAtkin.new).generate.to eq [2,3,5,7,11,13,17,19,23,29]
    end
  end
end
