require 'sinatra'
require './baked_goods'

get '/' do 
    @cookie = BakedGoods.new("Chocolate Chip", "daddy", "9.99", "Cookie")
    
    erb :home

end

get '/cakes' do 
    erb :cakes
end

get '/cakes/:cake' do
    @item = params[:item]
    erb :items
end

get '/cookies' do
    erb :cookies
end

get '/cookies/:cake' do
    @item = params[:item]
    erb :items
end

get '/muffins' do
    erb :muffins
end

get '/muffins/:cake' do
    @item = params[:item]
    erb :items
end