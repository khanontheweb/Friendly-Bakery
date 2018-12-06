require 'sinatra'
require './baked_goods'
require './send.rb'

9.times do
    BakedGoods.new("Chocolate Chip", "daddy", "9.99", "cookie","https://images.unsplash.com/photo-1500511599662-5441d83fae18?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80")
end

9.times do
    BakedGoods.new("Ice Cream", "daddy", "9.99", "cake", "https://images.unsplash.com/photo-1505253599537-305b179737ce?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80")
end

BakedGoods.new("Ice Cream", "daddy", "9.99", "cake", "https://images.unsplash.com/photo-1500511599662-5441d83fae18?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80")

9.times do
    BakedGoods.new("Coffee Cake", "daddy", "9.99", "muffin", "https://images.unsplash.com/photo-1505253599537-305b179737ce?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80")
end

get '/' do
    erb :home
end

post '/' do
    recipient = params['inputEmail']
    Catalog.welcome(recipient).deliver_now
    redirect '/'
end

get '/cakes' do 
    @items = BakedGoods.cakes
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
    @items = BakedGoods.muffins
    erb :items
end

get '/muffins/:cake' do
    @item = params[:item]
    erb :item
end