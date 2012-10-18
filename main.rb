require 'sinatra'
require 'sqlite3'

require_relative 'studentclass'

class Student
	attr_accessor :student_info


  get '/' do
		erb :index
  end

  get '/:id' do |id_name|
    id_name = id_name.to_i
    raise 404 if id_name > 20 || id_name < 1
  	@student_info = {}
  	student = Student.new
  	@student_info = student.find(id_name)
  	erb :student_page
  	
	end
end