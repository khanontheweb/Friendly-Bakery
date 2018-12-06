require 'sinatra'
require './baked_goods'

9.times do
    BakedGoods.new("Chocolate Chip", "daddy", "9.99", "cookie")
end


get '/' do
    erb :home

end

get '/cakes' do 
    erb :items
end

get '/cakes/:cake' do
    @item = params[:item]
    erb :item
end

get '/cookies' do

    @items = BakedGoods.cookies
    erb :items
end

get '/cookies/:cake' do
    @item = params[:item]
    erb :item
end

get '/muffins' do
    erb :items
end

get '/muffins/:cake' do
    @item = params[:item]
    erb :item
end