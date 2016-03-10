require 'sinatra'
require 'sinatra/reloader'
require 'tilt/erubis'

get '/' do
  @title = 'The Adventures of Shirlock Holmes'
  @chapter = 'Chapter 1'
  @contents = File.readlines("data/toc.txt")
  erb :home
end
