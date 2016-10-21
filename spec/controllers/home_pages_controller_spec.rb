require 'rails_helper'

RSpec.describe HomePagesController, type: :controller do

  describe "GET #register" do
    it "returns http success" do
      get :register
      expect(response).to have_http_status(:success)
    end
  end

end
