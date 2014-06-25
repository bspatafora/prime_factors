class PrimeFactorerValidator
  def initialize(input)
    @input = input
  end

  ERROR_MESSAGE = 'Input is invalid'

  def error_message_if_invalid
    return nil if no_input?(@input)

    number = Integer(@input)
    return ERROR_MESSAGE if number < 2
    rescue ArgumentError
      ERROR_MESSAGE
  end

  private

  def no_input?(input)
    @input.nil? || @input.empty?
  end
end
