require 'rails_helper'

RSpec.describe GenerateController, :type => :controller do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      expect(response).to be_success
    end

    it "sets @prime_factorer_presenter to a new PrimeFactorerPresenter" do
      get 'index'
      expect(assigns(:prime_factorer_presenter)).to be_a(PrimeFactorerPresenter)
    end
  end

end
