require 'sinatra'
require 'sinatra/activerecord'
require_relative './models/Robot'

set :database, {adapter: 'postgresql', database: 'robots'}

get "/robots" do
    @all_cats = Robot.all
    erb :index
end