require 'sinatra'
require 'sqlite3'

  get '/' do
		erb :index
  end

  get '/:student_id' do |student|
  	erb :student
	end
