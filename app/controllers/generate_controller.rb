class GenerateController < ApplicationController
  def index
    input = params[:number]
    @prime_factorer_presenter = PrimeFactorerPresenter.new(input, PrimeFactorer, PrimeFactorerValidator)
  end
end
