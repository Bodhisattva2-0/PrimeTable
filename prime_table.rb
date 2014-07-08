require_relative "./lib/prime_generator.rb"
require 'matrix'

class PrimeTable
  def initialize(count, sieve)
    @primes = PrimeGenerator.new(count, sieve).primes
  end

  def display
    display_string=""
    prime_multiplication_table.to_a.each do |row|
      display_string += row.join("   ")
      display_string += "\n\n"
    end
    display_string
  end

  private
  def prime_multiplication_table
    Matrix.build(@primes.size) do |row, column|
      if row == 0
        @primes[column]
      elsif column == 0
        @primes[row]
      else
        @primes[row] * @primes[column]
      end
    end
  end
end
