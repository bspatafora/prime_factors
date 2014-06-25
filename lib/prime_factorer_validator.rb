module PrimeFactorerValidator
  def self.validate(input)
    return false if input.empty?

    number = Integer(input)
    return false if number < 2
    true
    rescue ArgumentError
      false
  end
end
