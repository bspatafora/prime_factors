describe PrimeFactorerValidator do
  describe '#validate' do
    it 'returns true when input is an integer-like string greater than 1' do
      expect(PrimeFactorerValidator.validate('5')).to be true
    end

    it 'returns false when input is a negative integer-like string' do
      expect(PrimeFactorerValidator.validate('-123')).to be false
    end

    it 'returns false when input is a non-integer-like string' do
      expect(PrimeFactorerValidator.validate('ABC')).to be false
    end

    it 'returns false when input is a float-like string' do
      expect(PrimeFactorerValidator.validate('1.5')).to be false
    end

    it 'returns false when input is a 0-like string' do
      expect(PrimeFactorerValidator.validate('0')).to be false
    end

    it 'returns false when input is a 1-like string' do
      expect(PrimeFactorerValidator.validate('1')).to be false
    end

    it 'returns false when input is empty' do
      expect(PrimeFactorerValidator.validate('')).to be false
    end
  end
end
