require 'bundler'
require_relative 'models/model.rb'
Bundler.require

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
  post '/' do
    CodedResponse=Result.new
    inp=params[:input]
    @answer= CodedResponse.response(inp)
    erb :respond
  end
end