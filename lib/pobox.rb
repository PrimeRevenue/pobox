module Pobox
  def self.establish_connection
    ActiveRecord::Base.establish_connection(adapter: :sqlite3, database: 'test.db')
  end
end
