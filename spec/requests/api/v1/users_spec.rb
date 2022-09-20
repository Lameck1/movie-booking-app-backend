require 'swagger_helper'
RSpec.describe 'api//v1/users', type: :request do
  path '/api/v1/users' do
    post 'Sign up' do
      tags 'users'
      consumes 'application/json'
      parameter name: :user, in: :body, schema: {
        type: :object,
        properties: {
          username: { type: :string },
          role: { type: :string },
          client_id: { type: :string }
        },
        required: %w[name email password client_id]
      }
      response '401', 'Sign up successfull with returned access token' do
        let(:user) { { username: 'Tom', role: 'admin', client_id: 'xyz' } }
        run_test!
      end
      response '401', 'invalid request' do
        let(:user) { { username: 'Tom', role: 'admin', client_id: 'xyz' } }
        run_test!
      end
    end
  end
end
