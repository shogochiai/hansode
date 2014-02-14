class Estimate < ActiveRecord::Base
  belongs_to :author, class_name: 'User'
  belongs_to :client
  has_many :items, class_name: 'EstimateItem'
  validates :title, :body, :author, :client, presence: true

  def total
    items.inject(0) { |total, item| total += item.price }
  end
end
