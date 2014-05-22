require 'bundler'
Bundler.require

$: << '.'

require 'lib/pobox'

namespace :db do
  task :migrate do
    require 'lib/pobox/migrations'
    Pobox.establish_connection
    Pobox::Migrations.run
  end
end

namespace :smtp do
  task :run do
    Pobox.establish_connection
    Pobox.run_smtp_server
  end
end
