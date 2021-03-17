require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

get '/reversename/:name' do
  @x = params[:name]
  "#{@x.reverse}"
end

get '/square/:number' do 
  @poop = params[:number]
  ok = "#{@poop.to_i * @poop.to_i}"
  ok
end

get '/say/:number/:phrase' do
  @number = params[:number]
  @phrase = params[:phrase]
  messi = @number.to_i
  # binding.pry
  ronaldo = messi.times do 
    puts "#{@phrase}"
  end
  "#{ronaldo}"
  end


end