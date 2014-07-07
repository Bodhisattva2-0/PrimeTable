class PrimeGenerator
  def initialize(count, generator)
    @count = count
    @generator = generator
  end

  def generate
    @generator.generate(count)
  end
end
