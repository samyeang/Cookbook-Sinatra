require "sinatra"
require "sinatra/reloader" if development?
require "pry-byebug"
require "better_errors"
require_relative "recipe"
require_relative "cookbook"

configure :development do
  use BetterErrors::Middleware
  BetterErrors.application_root = File.expand_path('..', __FILE__)
end

get "/" do # <- Router part
  @cookbook = Cookbook.new
  erb :index # <- Controller part
end

get "/about" do
  erb :about
end

get "/team/:username" do
  puts params[:username]
  "The username is #{params[:username]}"
end

get "/new" do
  erb :new
end

post "/recipes" do
  recipe = Recipe.new(params["rname"], params["rdesc"], params["rrating"], false, params["rauthor"])
  erb :index
end
