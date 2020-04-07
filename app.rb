require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    @name = params[:name]
    @reversename = @name.reverse
    "#{@reversename}"
  end

  get '/square/:number' do
     @number = params[:number]
     @square = @number.to_i*@number.to_i
     "#{@square}"
   end

   get '/say/:number/:phrase' do
     @number = params[:number].to_i
     @phrase = params[:phrase]
     "#{@phrase * @number}"
   end
   
   get '/say/:word1/:word2/:word3/:word4/:word5' do 
     @word1 = params[:word1]
     @word2 = params[:word2]
     @word3 = params[:word3]
     @word4 = params[:word4]
     @word5 = params[:word5]
     "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
   end

   get 
end