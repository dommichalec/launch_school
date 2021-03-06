require 'yaml'
require 'sinatra'
require 'sinatra/reloader'
require 'tilt/erubis'
require_relative 'helpers'

before do
  @users = YAML.load_file('users.yaml')
end

get '/' do
  redirect '/users'
end

get '/users' do
  erb :users
end

get '/users/:user_name' do
  @user_name = params[:user_name].to_sym
  @email = @users[@user_name][:email]
  @interests = @users[@user_name][:interests]
  erb :user
end

not_found do
  redirect '/users'
end
