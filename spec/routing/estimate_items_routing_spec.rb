require "spec_helper"

describe EstimateItemsController do
  describe "routing" do

    it "routes to #index" do
      pending "Do it later!"
      get("/estimate_items").should route_to("estimate_items#index")
    end

    it "routes to #new" do
      pending "Do it later!"
      get("/estimate_items/new").should route_to("estimate_items#new")
    end

    it "routes to #show" do
      pending "Do it later!"
      get("/estimate_items/1").should route_to("estimate_items#show", :id => "1")
    end

    it "routes to #edit" do
      pending "Do it later!"
      get("/estimate_items/1/edit").should route_to("estimate_items#edit", :id => "1")
    end

    it "routes to #create" do
      pending "Do it later!"
      post("/estimate_items").should route_to("estimate_items#create")
    end

    it "routes to #update" do
      pending "Do it later!"
      put("/estimate_items/1").should route_to("estimate_items#update", :id => "1")
    end

    it "routes to #destroy" do
      pending "Do it later!"
      delete("/estimate_items/1").should route_to("estimate_items#destroy", :id => "1")
    end

  end
end
