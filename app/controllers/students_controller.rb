class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def grades
        students_by_grade = Student.all.order('grade DESC')
        render json: students_by_grade
    end

    def highest_grade 
        highest_grade_student = Student.all.order('grade DESC').limit(1)
        render json: highest_grade_student
    end
end
