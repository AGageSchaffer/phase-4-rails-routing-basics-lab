class Student < ApplicationRecord

  def self.all_grades
      Student.all.sort {
        |a, b| b.grade <=> a.grade
      }
  end

  def self.highest_grade
      self.all_grades[0]
  end

  def to_s
    "#{first_name} #{last_name}"
  end

end
