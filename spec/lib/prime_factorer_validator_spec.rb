describe PrimeFactorerValidator do
  describe '#error_message_if_invalid' do
    it 'returns nil when input is nil' do
      prime_factorer_validator = PrimeFactorerValidator.new(nil)
      expect(prime_factorer_validator.error_message_if_invalid).to be nil
    end

    it 'returns nil when input is empty' do
      prime_factorer_validator = PrimeFactorerValidator.new('')
      expect(prime_factorer_validator.error_message_if_invalid).to be nil
    end

    it 'returns nil when input is an integer-like string greater than 1' do
      prime_factorer_validator = PrimeFactorerValidator.new('5')
      expect(prime_factorer_validator.error_message_if_invalid).to be nil
    end

    it 'returns "Input is invalid" when input is a negative integer-like string' do
      prime_factorer_validator = PrimeFactorerValidator.new('-123')
      expect(prime_factorer_validator.error_message_if_invalid).to eq('Input is invalid')
    end

    it 'returns "Input is invalid" when input is a non-integer-like string' do
      prime_factorer_validator = PrimeFactorerValidator.new('ABC')
      expect(prime_factorer_validator.error_message_if_invalid).to eq('Input is invalid')
    end

    it 'returns "Input is invalid" when input is a float-like string' do
      prime_factorer_validator = PrimeFactorerValidator.new('1.5')
      expect(prime_factorer_validator.error_message_if_invalid).to eq('Input is invalid')
    end

    it 'returns "Input is invalid" when input is a 0-like string' do
      prime_factorer_validator = PrimeFactorerValidator.new('0')
      expect(prime_factorer_validator.error_message_if_invalid).to eq('Input is invalid')
    end

    it 'returns "Input is invalid" when input is a 1-like string' do
      prime_factorer_validator = PrimeFactorerValidator.new('1')
      expect(prime_factorer_validator.error_message_if_invalid).to eq('Input is invalid')
    end
  end
end
