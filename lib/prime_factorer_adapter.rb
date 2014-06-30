class PrimeFactorerAdapter
  def initialize(listener, input)
    @listener = listener
    @input = input
  end

  def get_prime_factors
    if PrimeFactorerValidator.validate(@input)
      presenter = PrimeFactorerPresenter.new(@input, PrimeFactorer)
      @listener.input_valid(presenter)
    else
      @listener.input_invalid
    end
  end
end
