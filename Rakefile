require 'bundler'
Bundler.require

require_relative 'lib/pobox'

namespace :db do
  task :migrate do
    require_relative 'lib/pobox/migrations'
    Pobox.establish_connection
    Pobox::Migrations.run
  end
end

namespace :smtp do
  task :run do
    Pobox.run_smtp_server
  end
end

namespace :web do
  task :run do
    Pobox.run_web_server
  end
end
