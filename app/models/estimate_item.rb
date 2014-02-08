class EstimateItem < ActiveRecord::Base
  belongs_to :estimate

  validates :estimate, presence: true
end
