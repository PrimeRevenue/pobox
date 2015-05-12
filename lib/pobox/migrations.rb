require 'active_record'

module Pobox
  module Migrations
    def self.run
      CreateMessages.migrate(:up)
    end
  end
end

require_relative 'migrations/create_messages'
