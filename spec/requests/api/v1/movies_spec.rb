require 'swagger_helper'
RSpec.describe 'api/v1/moviess', type: :request do
  path '/api/v1/moviess' do
    parameter name: 'Authorization', in: :header, type: :string, description: 'bearer xyz'
    get('list movies') do
      tags 'movies'
      consumes 'application/json'
      response(401, 'return a list of all doctors') do
        let(:Authorization) { ' Bearer xyz' }
        run_test!
      end
      response(401, 'Invalid request') do
        let(:Authorization) { 'Bearer xyz' }
        run_test!
      end
    end
  end
  path '/api/v1/moviess/create' do
    parameter name: 'Authorization', in: :header, type: :string, description: 'bearer xyz'
    post 'Create a movie' do
      tags 'movies'
      consumes 'application/json'
      parameter name: :doctor, in: :body, schema: {
        type: :object,
        properties: {
          title: { type: :string },
          director: { type: :string },
          description: { type: :string },
          playing_time: { type: :string },
          photo: { type: :string },
          release_date: { type: :string },
          genre: { type: :string },
          ticket_price: { type: :string },
          country: { type: :string },
          lead_cast: { type: :string }
        },
        required: %w[name details photo city specialization cost]
      }
      response '401', 'movie created' do
        let(:doctor) do
          { title: 'foo', director: 'bar', description: 'fo',
            playing_time: 'bar', photo: 'fo', release_date: '06-05-2022', genre: 'Action', ticket_price: '200.0',
            country: 'United States', lead_cast: 'Amkam' }
        end
        let(:Authorization) { 'Bearer abc' }
        run_test!
      end

      response '401', 'invalid request' do
        let(:movie) do
          { title: 'foo', director: 'bar', description: 'fo',
            playing_time: 'bar', photo: 'fo', release_date: '06-05-2022', genre: 'Action', ticket_price: '200.0',
            country: 'United States', lead_cast: 'Amkam' }
        end
        let(:Authorization) { 'Bearer abc' }
        run_test!
      end
    end
  end
end
