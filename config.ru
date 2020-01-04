require 'bundler/setup'
require './app.rb'

map '/app' do
  run WebApp.new
end

