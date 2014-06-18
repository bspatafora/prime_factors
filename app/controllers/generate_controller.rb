class GenerateController < ApplicationController
  def index
    @prime_factorer_presenter = PrimeFactorerPresenter.new(params[:number])
  end
end
