require 'rails_helper'

RSpec.describe PrimeFactorsController, :type => :controller do

  describe "GET 'generate'" do
    it "returns http success" do
      get 'generate'
      expect(response).to be_success
    end

    it "sets @prime_factorer_presenter to a new PrimeFactorerPresenter" do
      get 'generate'
      expect(assigns(:prime_factorer_presenter)).to be_a(PrimeFactorerPresenter)
    end
  end

end
