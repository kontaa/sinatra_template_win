require 'pp'
require 'bundler/setup'
require 'sinatra/base'
require 'sinatra/reloader'

class WebApp < Sinatra::Base

  #set :environment, :production
  #warn ENV.select{|k, v| k =~ /env/i}.inspect

  get '/' do
    #warn settings.environment
    #warn settings.development?.inspect
    #warn settings.test?.inspect
    #warn settings.production?.inspect

    "/ " + Time.now.to_s
  end
end

