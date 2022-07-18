class Student < ApplicationRecord

  def to_s
    "#{first_name} #{last_name}"
  end

  def self.by_name(nameToFind)
    Student.all.any?{|student| student.first_name == nameToFind || student.last_name == nameToFind }
  end
end



