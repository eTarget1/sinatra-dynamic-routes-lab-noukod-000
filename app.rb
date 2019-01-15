require_relative 'config/environment'

class App < Sinatra::Base
  #Write your code here!
  get '/' do
      "Hello World"
    end

  get '/reversename/:name' do
    @name= params[:name]
    "#{@name.reverse}"
  end

   get '/square/:number' do
     @numb = (params[:number].to_i ** 2).to_s
   end

    # get '/say/:number/:phrase' do
    #   @number = params[:number].to_i
    #   @phrase = params[:phrase]
    #   "#{@phrase.reverse}"
    # end

    get "/say/:number/:phrase" do
    answer = ' '

    params[:number].to_i.times do
      answer += params[:phrase]
    end
    answer
  end

  #
  #   get '/say/:word1/:word2/:word3/:word4/:word5' do
  #     @w1 = params[:word1]
  #     @w2 = params[:word2]
  #     @w3 = params[:word3]
  #     @w4 = params[:word4]
  #     @w5 = params[:word5]
  #     erb :saywords
  #   end
  #
  # get '/:operation/:number1/:number2' do
  #   @operation = params[:operation]
  #   @num1 = params[:number1].to_i
  #   @num2 = params[:number2].to_i
  #   erb :operation
  # end

end
