require "capistrano/setup"
require "capistrano/deploy"
require "capistrano/scm/git"
install_plugin Capistrano::SCM::Git
require "capistrano/bundler"
require 'capistrano/yarn'
require 'capistrano/rails/assets'
require 'capistrano/rails/migrations'
require 'capistrano/passenger'
require 'capistrano/rvm'

set :rvm_type, :deploy
set :rvm_ruby, '2.7.0'

# Load custom tasks from lib/capistrano/tasks if you have any defined
Dir.glob("lib/capistrano/tasks/*.rake").each { |r| import r }