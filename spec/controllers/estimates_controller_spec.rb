require 'spec_helper'

describe EstimatesController do
  # Login with Sorcery Helper
  before(:all) { @current_user = create :user }
  before(:each) { login_user @current_user }

  describe "GET index" do
    it "has 200 status code" do
      Estimate.stub(:all)
      get :index
      expect(response).to be_success
    end
  end
end
