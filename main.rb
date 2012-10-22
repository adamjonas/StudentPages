require 'sinatra'
require 'sqlite3'

require_relative 'studentclass'

class StudentApp

  get '/' do
		erb :index
  end

  get '/:studentname' do |studentname|
    first_name, last_name = studentname.split("_")
   # raise 404 if id_name > 20 || id_name < 1
  	@student_info = {}
  	student = Student.new
  	@student_info = student.find(first_name, last_name)
  	erb :student_page
  	
	end
end