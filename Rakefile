require 'bundler'
Bundler.require

$: << '.'

namespace :db do
  task :migrate do
    require 'lib/pobox'
    require 'lib/pobox/migrations'
    Pobox.establish_connection
    Pobox::Migrations.run
  end
end
