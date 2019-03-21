require('pry')
require_relative('../models/student.rb')
require_relative('../models/house.rb')

Student.delete_all()
House.delete_all()


house1 = House.new({
  "name" => "Griffindor",
  "id" => 1
  })

student1 = Student.new({
    "first_name" => "Ron",
    "last_name" => "Wesley",
    "house_id" => house1.id,
    "age" => 12
    })

student2 = Student.new({
      "first_name" => "Harry",
      "last_name" => "Potter",
      "house_id" => house1.id,
      "age" => 11
      })

house1.save()
student1.save()
student2.save()
p student1.house


binding.pry
nil
