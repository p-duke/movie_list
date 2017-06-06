require 'rails_helper'

RSpec.describe ApiQueriesController, type: :controller do
  describe "GET index" do
    it 'renders the template' do
      get :index
      expect(response).to render_template('index')
    end
  end

  describe "POST create" do
    let(:params) { { title: "Waynes World" } }

    it 'assigns @api_query' do
      api_query = ApiQuery.new()
      post :create, params
      expect(response).to render_template('show')
    end
  end
end
