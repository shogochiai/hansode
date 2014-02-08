require 'spec_helper'

describe "estimate_items/show" do
  before(:each) do
    @estimate_item = assign(:estimate_item, stub_model(EstimateItem,
      :estimate_id => 1,
      :title => "Title",
      :price => 2,
      :order => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Title/)
    rendered.should match(/2/)
    rendered.should match(/3/)
  end
end
