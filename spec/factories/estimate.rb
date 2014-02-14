FactoryGirl.define do
  factory :estimate do
    title 'Title'
    body 'This is estimate made by FactoryGirl'
    published_date Time.now
    expiration_date Time.now

    before(:create) do |estimate, evaluator|
      estimate.author = create(:user) if estimate.author.nil?
      estimate.client = create(:client) if estimate.client.nil?
    end
  end
end
