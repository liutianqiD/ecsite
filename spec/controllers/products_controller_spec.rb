require 'rails_helper'

 let(:admin_user) { User.all.first}
  before(:each) {sign_in admin_user}

RSpec.describe ProductsController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

end
