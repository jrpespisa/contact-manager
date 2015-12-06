require 'sinatra'
require 'sinatra/reloader'
require "sinatra/activerecord"
require "pry"

require_relative 'models/contact'
also_reload 'models/contact'

get '/' do
  @contacts = Contact.all
  erb :index
end

get "/contacts/:id" do
  @contact_info = Contact.find(params[:id])
  erb :show
end
