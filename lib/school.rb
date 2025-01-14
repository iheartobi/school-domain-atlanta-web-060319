# code here!
require 'pry'

class School
    attr_reader :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student_name, grade)
        roster[grade] ||= []
        roster[grade] << student_name
    end

    def grade(grade)
        roster[grade]
    end

    def sort
        sorter = {}
        roster.each do |grade,student_name|
            sorter[grade] = student_name.sort
        end
        sorter
    end

end


