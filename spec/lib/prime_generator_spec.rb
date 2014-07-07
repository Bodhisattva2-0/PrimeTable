require_relative '../../lib/prime_generator.rb'

describe PrimeGenerator do
  describe "generate" do
    pending "returns an array of primes" do
      PrimeGenerator.new(10, SieveOfAtkin.new).generate.to eq [2,3,5,7,9,11,13,17,19,23]
    end
  end
end
