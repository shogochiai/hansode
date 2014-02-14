require 'spec_helper'

describe "estimate_items/index" do
  before(:each) do
    assign(:estimate_items, [
      stub_model(EstimateItem,
        :estimate_id => 1,
        :title => "Title",
        :price => 2,
        :order => 3
      ),
      stub_model(EstimateItem,
        :estimate_id => 1,
        :title => "Title",
        :price => 2,
        :order => 3
      )
    ])
  end

  it "renders a list of estimate_items" do
    pending "Do it later!"
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
