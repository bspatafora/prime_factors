class PrimeFactorsController < ApplicationController
  def generate
    adapter = PrimeFactorerAdapter.new(self, params[:number])
    adapter.get_prime_factors
  end

  def input_was_valid(factors)
    @factors = factors
    render :factors
  end

  def input_was_invalid(input)
    flash.now[:alert] = t(:invalid_input_alert, input: input)
    render :form
  end
end
