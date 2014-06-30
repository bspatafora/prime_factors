class PrimeFactorsController < ApplicationController
  def generate
    adapter = PrimeFactorerAdapter.new(self, params[:number])
    adapter.get_prime_factors
  end

  def input_valid(presenter)
    @presenter = presenter
    render :factors
  end

  def input_invalid
    flash.now[:alert] = 'Input is invalid'  # This string probably should not be defined here
    render :form
  end
end
