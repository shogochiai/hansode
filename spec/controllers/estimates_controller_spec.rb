require 'spec_helper'

describe EstimatesController do
  describe "GET index" do
    it "has 200 status code" do
      get :index
      expect(response).to be_success
    end
  end
end
