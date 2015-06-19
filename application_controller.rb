require 'bundler'
require_relative 'models/model.rb'
Bundler.require

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
  post '/' do
    CodedResponse=Result.new
    inp1=params[:encrypt]
    @answer1= CodedResponse.response1(inp1)
    inp2=params[:decrypt]
    @answer2= CodedResponse.response2(inp2)
    erb :respond
  end
end