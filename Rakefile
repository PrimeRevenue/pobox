require 'bundler'
Bundler.require
require 'grape-raketasks/tasks'

task :environment do
  require_relative 'lib/pobox'
end

namespace :db do
  task :migrate => :environment do
    require_relative 'lib/pobox/migrations'
    Pobox.establish_connection
    Pobox::Migrations.run
  end
end

namespace :smtp do
  task :run => :enviroment do
    Pobox.run_smtp_server
  end
end

namespace :web do
  task :run => :environment do
    Pobox.run_web_server
  end
end
