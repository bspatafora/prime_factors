class PrimeFactorerPresenter
  def initialize(number, prime_factorer)
    @number = number
    @prime_factorer = prime_factorer
  end

  def prime_factors
    unless @number.nil?
      @number = @number.to_i
      prime_factors_array = @prime_factorer.generate(@number)
      prime_factors_array.join(', ')
    end
  end
end
