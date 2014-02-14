require 'spec_helper'

describe Estimate do
  it { should have_many(:items).class_name('EstimateItem') }

  describe "#total" do
    it "totals prices in all items" do
      estimate = create :estimate
      5.times.each do
        estimate.items.create(title: 'Item', price: 100)
      end
      expect(estimate.total).to eq(500)
    end
  end
end
