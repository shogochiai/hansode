class Estimate < ActiveRecord::Base
  attr_accessible :author_id, :body, :client_id, :expiration_date, :published_date, :title
end
