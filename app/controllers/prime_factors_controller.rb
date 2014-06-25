class PrimeFactorsController < ApplicationController
  def generate
    input = params[:number]
    @prime_factorer_presenter = PrimeFactorerPresenter.new(input, PrimeFactorer, PrimeFactorerValidator)
  end
end
