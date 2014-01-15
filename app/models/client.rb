class Client < ActiveRecord::Base
  class << self
    def for_select_tag
      self.all.map { |client| [ client.name, client.id ] }
    end
  end
end
