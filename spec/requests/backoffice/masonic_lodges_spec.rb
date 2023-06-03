require 'rails_helper'

RSpec.describe "Backoffice::MasonicLodges", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/backoffice/masonic_lodges/index"
      expect(response).to have_http_status(:success)
    end
  end

end
