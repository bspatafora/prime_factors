describe PrimeFactorerPresenter do
  describe '#generate' do
    it 'returns an array with the prime factors of the number (as string) passed' do
      prime_factorer_presenter = PrimeFactorerPresenter.new('9')
      expect(prime_factorer_presenter.generate).to eq([3, 3])
    end
  end
end
