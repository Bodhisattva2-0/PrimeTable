class SieveOfEratosthenes
  def initialize(count)
    @count = count
  end

  def generate
    return [] if @count < 1
    primes = [2]
    current = 3
    while(primes.length < @count)
      primes << current if is_prime?(current, primes)
      current += 2
    end
    primes
  end

  private
  def is_prime?(number, primes)
    prime_limit = Math.sqrt(number).floor
    potential_prime_factors = primes.select{|p| p <= prime_limit}
    !potential_prime_factors.any?{|p| number % p == 0}
  end
end
