class GenerateController < ApplicationController
  def index
    input = params[:number]
    @prime_factorer_validator = PrimeFactorerValidator.new(input)
    if @prime_factorer_validator.error_message_if_invalid
      @prime_factorer_presenter = PrimeFactorerPresenter.new(nil, PrimeFactorer)
    else
      @prime_factorer_presenter = PrimeFactorerPresenter.new(input, PrimeFactorer)
    end
  end
end
