class Estimate < ActiveRecord::Base
  belongs_to :author, class_name: 'User'
  belongs_to :client
  validates :title, :body, :author, :client, presence: true
end
