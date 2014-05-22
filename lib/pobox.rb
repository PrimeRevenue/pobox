require 'bundler'
Bundler.require

module Pobox
  def self.establish_connection
    ActiveRecord::Base.establish_connection(adapter: :sqlite3, database: 'test.db')
  end

  def self.run_smtp_server
    EM.run { EM.start_server '127.0.0.1', 25000, Pobox::SMTPServer, { } }
  end
end

require 'active_record'

require 'lib/pobox/message'
require 'lib/pobox/smtp_server'
