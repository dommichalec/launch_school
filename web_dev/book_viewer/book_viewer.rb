require 'sinatra'
require 'sinatra/reloader'
require 'tilt/erubis'

get '/read' do
  @title = 'The Adventures of Sherlock Holmes'
  @author = 'Sir Arthur Doyle'
  @table_of_contents = File.readlines('data/toc.txt')

  erb :home
end

get '/chapters/1' do
  @title = "Chapter 1"
  @author = 'Sir Author Doyle'
  @table_of_contents = File.readlines("data/toc.txt")
  @chapter = File.read("data/chp1.txt")

  erb :chapters
end
