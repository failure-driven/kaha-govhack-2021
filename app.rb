# frozen_string_literal: true

require 'sinatra'
require 'sinatra/reloader' if development?
require 'rqrcode'

set :root, File.dirname(__FILE__)

get '/' do
  erb :index
end
get '/app' do
  erb 'page_1.html'.to_sym
end
get '/qr' do
  @url = params[:url]
  @url ||= 'https://wandertrust.herokuapp.com/'
  qrcode = RQRCode::QRCode.new(@url)
  @qr_svg = qrcode.as_svg(
    color: '212121',
    shape_rendering: 'crispEdges',
    module_size: 11,
    standalone: true,
    use_path: true,
    viewbox: '0 0 500 500'
  )
  erb 'qr.html'.to_sym
end
