require 'spec_helper'

describe EstimateItemsController do

  let(:valid_attributes) { { "estimate_id" => "1" } }

  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all estimate_items as @estimate_items" do
      pending "Do it later!"
      estimate_item = EstimateItem.create! valid_attributes
      get :index, {}, valid_session
      assigns(:estimate_items).should eq([estimate_item])
    end
  end

  describe "GET show" do
    it "assigns the requested estimate_item as @estimate_item" do
      pending "Do it later!"
      estimate_item = EstimateItem.create! valid_attributes
      get :show, {:id => estimate_item.to_param}, valid_session
      assigns(:estimate_item).should eq(estimate_item)
    end
  end

  describe "GET new" do
    it "assigns a new estimate_item as @estimate_item" do
      pending "Do it later!"
      get :new, {}, valid_session
      assigns(:estimate_item).should be_a_new(EstimateItem)
    end
  end

  describe "GET edit" do
    it "assigns the requested estimate_item as @estimate_item" do
      pending "Do it later!"
      estimate_item = EstimateItem.create! valid_attributes
      get :edit, {:id => estimate_item.to_param}, valid_session
      assigns(:estimate_item).should eq(estimate_item)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new EstimateItem" do
        pending "Do it later!"
        expect {
          post :create, {:estimate_item => valid_attributes}, valid_session
        }.to change(EstimateItem, :count).by(1)
      end

      it "assigns a newly created estimate_item as @estimate_item" do
        pending "Do it later!"
        post :create, {:estimate_item => valid_attributes}, valid_session
        assigns(:estimate_item).should be_a(EstimateItem)
        assigns(:estimate_item).should be_persisted
      end

      it "redirects to the created estimate_item" do
        pending "Do it later!"
        post :create, {:estimate_item => valid_attributes}, valid_session
        response.should redirect_to(EstimateItem.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved estimate_item as @estimate_item" do
        pending "Do it later!"
        # Trigger the behavior that occurs when invalid params are submitted
        EstimateItem.any_instance.stub(:save).and_return(false)
        post :create, {:estimate_item => { "estimate_id" => "invalid value" }}, valid_session
        assigns(:estimate_item).should be_a_new(EstimateItem)
      end

      it "re-renders the 'new' template" do
        pending "Do it later!"
        # Trigger the behavior that occurs when invalid params are submitted
        EstimateItem.any_instance.stub(:save).and_return(false)
        post :create, {:estimate_item => { "estimate_id" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested estimate_item" do
        pending "Do it later!"
        estimate_item = EstimateItem.create! valid_attributes
        # Assuming there are no other estimate_items in the database, this
        # specifies that the EstimateItem created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        EstimateItem.any_instance.should_receive(:update).with({ "estimate_id" => "1" })
        put :update, {:id => estimate_item.to_param, :estimate_item => { "estimate_id" => "1" }}, valid_session
      end

      it "assigns the requested estimate_item as @estimate_item" do
        pending "Do it later!"
        estimate_item = EstimateItem.create! valid_attributes
        put :update, {:id => estimate_item.to_param, :estimate_item => valid_attributes}, valid_session
        assigns(:estimate_item).should eq(estimate_item)
      end

      it "redirects to the estimate_item" do
        pending "Do it later!"
        estimate_item = EstimateItem.create! valid_attributes
        put :update, {:id => estimate_item.to_param, :estimate_item => valid_attributes}, valid_session
        response.should redirect_to(estimate_item)
      end
    end

    describe "with invalid params" do
      it "assigns the estimate_item as @estimate_item" do
        pending "Do it later!"
        estimate_item = EstimateItem.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        EstimateItem.any_instance.stub(:save).and_return(false)
        put :update, {:id => estimate_item.to_param, :estimate_item => { "estimate_id" => "invalid value" }}, valid_session
        assigns(:estimate_item).should eq(estimate_item)
      end

      it "re-renders the 'edit' template" do
        pending "Do it later!"
        estimate_item = EstimateItem.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        EstimateItem.any_instance.stub(:save).and_return(false)
        put :update, {:id => estimate_item.to_param, :estimate_item => { "estimate_id" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested estimate_item" do
      pending "Do it later!"
      estimate_item = EstimateItem.create! valid_attributes
      expect {
        delete :destroy, {:id => estimate_item.to_param}, valid_session
      }.to change(EstimateItem, :count).by(-1)
    end

    it "redirects to the estimate_items list" do
      pending "Do it later!"
      estimate_item = EstimateItem.create! valid_attributes
      delete :destroy, {:id => estimate_item.to_param}, valid_session
      response.should redirect_to(estimate_items_url)
    end
  end

end
