class PrimeFactorerPresenter
  def initialize(input, prime_factorer, validator)
    @input = input
    @prime_factorer = prime_factorer
    @validator = validator
  end

  ERROR_MESSAGE = 'Input is invalid'

  def prime_factors
    return nil if @input.nil?
    number = @input.to_i
    prime_factors_array = @prime_factorer.generate(number)
    prime_factors_array.join(', ')
  end

  def error_message
    return nil if @input.nil?
    @validator.validate(@input) ? nil : ERROR_MESSAGE
  end
end
