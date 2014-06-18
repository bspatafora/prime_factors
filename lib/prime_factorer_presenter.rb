class PrimeFactorerPresenter
  def initialize(number)
    @number = number
    @prime_factorer = PrimeFactorer
  end

  def generate
    unless @number.nil?
      @number = @number.to_i
      @prime_factorer.generate(@number)
    end
  end
end
