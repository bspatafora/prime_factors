describe PrimeFactorerPresenter do
  describe '#prime_factors' do
    it 'returns a string with the prime factors of its input' do
      prime_factorer_presenter = PrimeFactorerPresenter.new('9', PrimeFactorer)
      expect(prime_factorer_presenter.prime_factors).to eq('3, 3')
    end
  end
end
