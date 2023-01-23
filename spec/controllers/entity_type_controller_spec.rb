require 'rails_helper'

RSpec.describe EntityTypesController, type: :controller do
  let(:types) { FactoryBot.create_list(:entity_type, 5) }

  describe "GET index" do
    it "has a 200 status code" do
      get :index
      expect(response.status).to eq(200)
    end
  end
end