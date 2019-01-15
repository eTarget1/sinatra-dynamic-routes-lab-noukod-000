require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name= params[:name]
    erb :reversename
  end

  get '/square/:number' do
    @numb = params[:number].to_i
    erb :square
  end

    get '/say/:number/:phrase' do
      @number = params[:number].to_i
      @phrase = params[:phrase]
      erb :say
    end

    get '/say/:word1/:word2/:word3/:word4/:word5' do

end
