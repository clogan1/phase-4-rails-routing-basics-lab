class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def grades
        students_by_grade = Student.all.order('grade DESC')
        render json: students_by_grade
    end
end
