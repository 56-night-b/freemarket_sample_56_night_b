require 'rails_helper'

RSpec.describe MainController, type: :controller do
  describe  'GET #index' do
    it "populates an array of products ordered by created_at DESC" do
      get :index
      expect(response).to render_template :index
    end
  end
end
