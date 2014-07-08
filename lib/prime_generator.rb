class PrimeGenerator
  def initialize(count, sieve)
    @count = count
    @sieve = sieve.new(@count)
  end

  def primes
    @sieve.generate
  end
end
