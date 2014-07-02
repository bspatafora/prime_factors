class PrimeFactorsController < ApplicationController
  def generate
    adapter = PrimeFactorerAdapter.new(self, params[:number])
    adapter.get_prime_factors
  end

  def input_was_valid(input)
    @presenter = PrimeFactorerPresenter.new(input, PrimeFactorer)
    render :factors
  end

  def input_was_invalid
    flash.now[:alert] = 'Input is invalid'
    render :form
  end
end
