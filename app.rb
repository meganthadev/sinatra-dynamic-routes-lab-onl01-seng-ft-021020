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

end