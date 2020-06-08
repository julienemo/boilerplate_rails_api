require 'rails_helper'
require 'faker'
require 'byebug'

RSpec.describe 'post /sign_up', type: :request do
  context "when 3 params are good" do
    before { post "/users.json", 
      url: "localhost:8080"} do 
      params: {
        user: {
          email: Faker::Internet.unique.email,
          username: Faker::Internet.unique.email,
          password: Faker::Internet.password
        }
      }
    end

    it 'returns 200' do
      puts "3" * 50
      puts response
      puts "3" * 50
      expect(response.status).to eq 200
    end
  end
end
