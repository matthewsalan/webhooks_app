require 'rails_helper'

RSpec.describe ApiController, type: :controller do
  describe 'Get #index' do
    it 'responds successfully with an HTTP 200 status code' do
      get :index

      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it 'renders the index template' do
      get :index

      expect(response).to render_template("index")
    end
  end

  describe 'Get #new' do
    it 'responds successfully with an HTTP 200 status code' do
      get :new

      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it 'renders the new template' do
      get :new

      expect(response).to render_template("new")
    end
  end
end
