require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    @name = params[:name]
    @reversename =@name.reverse
    "#{reversename}"
  end   
  
  get '/square/:number' do
    @number = params[:number]
    @square = :number

end