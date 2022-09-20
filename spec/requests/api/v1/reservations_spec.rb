require 'swagger_helper'
RSpec.describe 'api/v1/reservations', type: :request do
  path '/api/v1/reservations' do
    parameter name: 'Authorization', in: :header, type: :string, description: 'bearer xyz'
    get('list reservations') do
      tags 'reservations'
      consumes 'application/json'
      response(401, 'return a list of all reservations') do
        let(:Authorization) { ' Bearer xyz' }
        run_test!
      end
      response(401, 'Invalid request') do
        let(:Authorization) { 'Bearer xyz' }
        run_test!
      end
    end
  end
  path '/api/v1/reservations/create' do
    parameter name: 'Authorization', in: :header, type: :string, description: 'bearer xyz'
    post 'Create a reservation' do
      tags 'reservations'
      consumes 'application/json'
      parameter name: :reservation, in: :body, schema: {
        type: :object,
        properties: {
          location: { type: :string },
          date: { type: :string },
          movie_id: { type: :number }
        },
        required: %w[location date movie_id]
      }
      response '401', 'reservation created' do
        let(:reservation) { { location: 'foo', date: '17-06-2025', movie_id: 1 } }
        let(:Authorization) { 'Bearer abc' }
        run_test!
      end

      response '401', 'invalid request' do
        let(:reservation) { { location: 'foo', date: '17-06-2025', movie_id: 1 } }
        let(:Authorization) { 'Bearer abc' }
        run_test!
      end
    end
  end
end
