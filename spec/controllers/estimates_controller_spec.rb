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

    it "calls estimate all method" do
      Estimate.should_receive(:all)
      get :index
    end

    it "assigns all estimates as @estimates" do
      estimates = [Estimate.new]
      Estimate.stub(:all).and_return(estimates)
      get :index
      expect(assigns(:estimates)).to eq estimates
    end
  end

  describe "GET show" do
    pending "Do it later"
  end
end
