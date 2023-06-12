<<<<<<< HEAD
# frozen_string_literal: true

=======
>>>>>>> main
require 'rails_helper'

RSpec.describe 'Backoffice::Members', type: :request do
  describe 'GET /profile' do
    it 'returns http success' do
      get '/backoffice/members/profile'
      expect(response).to have_http_status(:success)
    end
  end
end
