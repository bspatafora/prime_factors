class PrimeFactorerAdapter
  def initialize(listener, input)
    @listener = listener
    @input = input
  end

  def get_prime_factors
    if PrimeFactorerValidator.validate(@input)
      @listener.input_was_valid(@input)
    else
      @listener.input_was_invalid
    end
  end
end
