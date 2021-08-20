# frozen_string_literal: true

require 'sinatra'
require 'sinatra/reloader' if development?

set :root, File.dirname(__FILE__)

get '/' do
  erb :index
end
