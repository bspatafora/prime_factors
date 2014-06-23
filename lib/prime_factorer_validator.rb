class PrimeFactorerValidator
  def initialize(input)
    @input = input
  end

  ERROR_MESSAGE = 'Input is invalid'

  def error_message_if_invalid
    return nil if @input.nil? || @input.empty?
    number = Integer(@input)
    return ERROR_MESSAGE if number < 2
    nil
    rescue ArgumentError
      ERROR_MESSAGE
  end
end
