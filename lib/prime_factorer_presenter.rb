class PrimeFactorerPresenter
  def initialize(number)
    @number = number
    @prime_factorer = PrimeFactorer
  end

  def generate
    unless @number.nil?
      @number = @number.to_i
      prime_factors_array = @prime_factorer.generate(@number)
      prime_factors_array.join(', ')
    end
  end
end
