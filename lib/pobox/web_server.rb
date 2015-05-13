require 'goliath'

module Pobox
  class WebServer < Goliath::API
    def response(env)
      API.call(env)
    end
  end
end
