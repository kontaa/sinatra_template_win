require 'pp'
require 'bundler/setup'
require 'sinatra/base'
require 'sinatra/reloader'
require 'slim'
require 'sass'
require 'coffee-script'

class WebApp < Sinatra::Base

  #set :environment, :production
  #warn ENV.select{|k, v| k =~ /env/i}.inspect

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    #warn settings.environment
    #warn settings.development?.inspect
    #warn settings.test?.inspect
    #warn settings.production?.inspect

    "/ " + Time.now.to_s
  end

  get '/index_slim' do
    slim :index_slim
  end

  get '/css/*.css' do |file|
    path = File.join("scss", file)
    pass unless File.exist? (path + ".scss")
    scss path.to_sym
  end

  get '/js/*.js' do |file|
    path = File.join("coffee", file)
    pass unless File.exist? (path + ".coffee")
    coffee path.to_sym
  end

end

