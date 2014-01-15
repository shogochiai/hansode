class User < ActiveRecord::Base
  authenticates_with_sorcery!
  # attr_accessible :title, :body
  
  validates :password, presence: true, confirmation: true, length: { minimum: 3}
  validates :email, presence: true, uniqueness: true
  validates :password_confirmation, presence: true

  class << self
    def for_select_tag
      self.all.map { |user| [ user.email, user.id ] }
    end
  end
end
