require 'spec_helper'

describe "estimate_items/new" do
  before(:each) do
    assign(:estimate_item, stub_model(EstimateItem,
      :estimate_id => 1,
      :title => "MyString",
      :price => 1,
      :order => 1
    ).as_new_record)
  end

  it "renders new estimate_item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", estimate_items_path, "post" do
      assert_select "input#estimate_item_estimate_id[name=?]", "estimate_item[estimate_id]"
      assert_select "input#estimate_item_title[name=?]", "estimate_item[title]"
      assert_select "input#estimate_item_price[name=?]", "estimate_item[price]"
      assert_select "input#estimate_item_order[name=?]", "estimate_item[order]"
    end
  end
end
