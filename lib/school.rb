#Let's think of an example on a slightly larger scale. Let's say we are writing an application that
# will be used by a major automobile manufacturer to help manage their plants. In this case, we need
# a program that represents not just individual cars, but the entire car factory. In this (simplified) example, 
#you could write an AutoPlant class that produces individual cars and has instance and class methods that handle things
#like take_inventory or paint_cars. Such a program not only represents a single object or concept but an entire environment
#––that of the auto factory. Consequently, this program could be understood as a domain model. It takes the world of the auto factory,
# and maps the constituents of that world into your program.
require "pry"
class School
@@all = []

attr_accessor :name , :roster

    def initialize(name)
        @name = name
        @roster = {}
        @@all = self
    end
        
    def add_student(student_name, grade)
            roster[grade] ||= []
            roster[grade] << student_name
    end

    def grade(grade)
        roster[grade]
    end

    def sort
        hash = {}
        roster.each do|key,value|
             hash[key] = value.sort

        end
        return hash
    end

end

school = School.new("Bayside High School")

school.add_student("Zach Morris", 9)
school.add_student("AC Slater", 9)
school.add_student("Kelly Kapowski", 10)
school.add_student("Screech", 11)
school.roster
