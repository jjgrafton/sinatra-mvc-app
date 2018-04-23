require 'sinatra'
require 'sinatra/activerecord'
require_relative './models/Robot'

set :database, {adapter: 'postgresql', database: 'robots'}

get "/robots" do
    @all_robots = Robot.all
    erb :index
end