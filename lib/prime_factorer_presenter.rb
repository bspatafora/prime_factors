class PrimeFactorerPresenter
  def initialize(input, prime_factorer)
    @input = input
    @prime_factorer = prime_factorer
  end

  def prime_factors
    number = @input.to_i
    prime_factors_array = @prime_factorer.generate(number)
    prime_factors_array.join(', ')
  end
end
