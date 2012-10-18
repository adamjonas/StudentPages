require 'sinatra'
require 'sqlite3'

  get '/' do
		erb :index
  end

  get '/student_profiles' do
  	erb :student_page
	end