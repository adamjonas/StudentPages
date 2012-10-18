require 'sinatra'
require 'sqlite3'

class Student
	attr_accessor :student_info


  get '/' do
		erb :index
  end

  get '/:id' do
  	@student_info = {}
  	erb :student_page
  
	end
end