describe PrimeFactorerPresenter do
  describe '#prime_factors' do
    it 'returns nil if input is nil' do
      prime_factorer_presenter = PrimeFactorerPresenter.new(nil, PrimeFactorer, PrimeFactorerValidator)
      expect(prime_factorer_presenter.prime_factors).to be nil
    end

    it 'returns a string with the prime factors of the number passed (as string input)' do
      prime_factorer_presenter = PrimeFactorerPresenter.new('9', PrimeFactorer, PrimeFactorerValidator)
      expect(prime_factorer_presenter.prime_factors).to eq('3, 3')
    end
  end

  describe '#error_message' do
    it 'returns nil if input is nil' do
      prime_factorer_presenter = PrimeFactorerPresenter.new(nil, PrimeFactorer, PrimeFactorerValidator)
      expect(prime_factorer_presenter.error_message).to be nil
    end

    it 'returns nil if input is valid' do
      prime_factorer_presenter = PrimeFactorerPresenter.new('2', PrimeFactorer, PrimeFactorerValidator)
      expect(prime_factorer_presenter.error_message).to be nil
    end

    it 'returns an error message if the input is invalid ' do
      prime_factorer_presenter = PrimeFactorerPresenter.new('invalid', PrimeFactorer, PrimeFactorerValidator)
      expect(prime_factorer_presenter.error_message).to eq(PrimeFactorerPresenter::ERROR_MESSAGE)
    end
  end
end
