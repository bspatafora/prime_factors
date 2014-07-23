class PrimeFactorerAdapter
  def initialize(listener, input)
    @listener = listener
    @input = input
  end

  def get_prime_factors
    if PrimeFactorerValidator.validate(@input)
      factors = PrimeFactorer.generate(@input.to_i)
      @listener.input_was_valid(factors)
    else
      @listener.input_was_invalid(@input)
    end
  end
end
