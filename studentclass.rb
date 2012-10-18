#TEST METHODS

def assert_equal(actual, expected)
  if expected == actual
    puts 'pass'
  else
    puts "fail: expected #{expected}, got #{actual}"
  end
end

def assert(statement)
  if statement
    puts 'pass'
  else
    puts "fail: expected #{statement} to be true."
  end
end

#TESTS

class Student
  attr_reader :db

  def intialize("studentinfo.sqlite")
    @db = SQLite3::Database.open('studentinfo.sqlite')
  end

  attr_accessor :id, :first_name, :last_name, :picture, :bio, :tagline, :email, :blog,
  :linkedin, :twitter, :github, :codeschool, :coderwall, :stackoverflow, :treehouse, :feed_1, :feed_2

def self.find(student_id)
  @db.results_as_hash = true
  @db.execute("SELECT * FROM students WHERE id = ?", student_id)
end

end

begin
  assert Student.new.is_a?(Student)
rescue => e
  puts e
end

student = Student.new

[:id, :first_name, :last_name, :picture, :bio, :tagline, :email, :blog,
  :linkedin, :twitter, :github, :codeschool, :coderwall, :stackoverflow,
  :treehouse, :feed_1, :feed_2].each do |attribute|
  student.send("#{attribute}=", "value")
  assert_equal student.send(attribute), "value"
end

Student.find(1) #=> #<Student>
assert Student.find(1).is_a?(Student) 



