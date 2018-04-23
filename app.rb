require 'sinatra'
require 'sinatra/activerecord'
require_relative './models/Robot'

set :database, {adapter: 'postgresql', database: 'robots'}

get "/robots" do
    @all_robots = Robot.all
    erb :index
end

get "/robots" do
    Robot.find(1).destroy
    @all_robots = Robot.all

end

get "/robots" do
    Robot.where("angry" = "true"). destroy_all
    @all_robots = Robot.all
    
    end
end

get "/robots" do
    robot = Robot.find(1)
    robot.update(name: "This is my new name!")

end