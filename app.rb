# frozen_string_literal: true

require 'sinatra'
require 'sinatra/reloader' if development?
require 'rqrcode'

set :root, File.dirname(__FILE__)

get '/' do
  qrcode = RQRCode::QRCode.new("https://kaha-govhack-2021.herokuapp.com/")
  qrcode = RQRCode::QRCode.new("https://bit.ly/kahaGH2021")
  @qr_svg = qrcode.as_svg(
    color: "212121",
    shape_rendering: "crispEdges",
    module_size: 11,
    standalone: true,
    use_path: true,
    viewbox: "0 0 500 500"
  )
  erb :index
end
