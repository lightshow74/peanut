require 'rubygems'
require 'bundler'

Bundler.require

require 'sinatra'
require 'bourbon'

class Peanut < Sinatra::Base
  get '/css/styles.css' do
    scss :'css/styles', :style => :expanded
  end

  get '/' do
    erb :index
  end
end

run Peanut
