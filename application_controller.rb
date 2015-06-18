require 'bundler'
require_relative 'models/model.rb'
Bundler.require

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
  post '/' do
    SquacResponse=Result.new
    na=params[:name]
    emo=params[:emotion]
    @answer= SquacResponse.response(na,emo)
    erb :respond
  end
end