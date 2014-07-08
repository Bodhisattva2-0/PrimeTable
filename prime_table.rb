require_relative "./lib/prime_generator.rb"

class PrimeTable
  def initialize(count, sieve)
    @primes = PrimeGenerator.new(count, sieve).primes
  end

  def display
    puts prime_multiplication_table
  end

  private
  def prime_multiplication_table
  end
end
