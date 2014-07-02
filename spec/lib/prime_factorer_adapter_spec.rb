describe PrimeFactorerAdapter do
  describe '#get_prime_factors' do
    context 'when its input is invalid' do
      it 'sends an input_invalid message to its listener' do
        listener = double
        invalid_input = 'abc'
        adapter = PrimeFactorerAdapter.new(listener, invalid_input)

        expect(listener).to receive(:input_was_invalid)
        adapter.get_prime_factors
      end
    end
    
    context 'when its input is valid' do
      it 'sends an input_valid message to its listener' do
        listener = double
        valid_input = '9'
        adapter = PrimeFactorerAdapter.new(listener, valid_input)

        expect(listener).to receive(:input_was_valid)
        adapter.get_prime_factors
      end
    end
  end
end
