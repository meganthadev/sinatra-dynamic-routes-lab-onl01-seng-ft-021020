require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    @name = params[:name]
    @reversename =@name.reverse
    "#{reversename}"
  end   
  
  get '/square/:number' do
    @number = params[:number]
    @square = @number.to_i*@number.to_i 
    "#{square}"
  end   
  
  get '/say/:number/:phrase'
    @number = params[:number]
    @phrase = params[:phrase]
    "#{@phrase * @number}"
   end 
  end 

end