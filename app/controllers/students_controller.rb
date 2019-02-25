class StudentsController < ApplicationController

    before_action :lookup_student, except: [:index, :new, :create]
    def index
        @students = Student.all
        render 'index'
    end
    def show
        render 'show'
    end
    def new
        @student = Student.new
        render 'new'
    end
    def create
        @student = Student.create(student_params)
        redirect_to student_path(@student)
    end
    def update
        @student.update(student_params)
        redirect_to student_path(@student)
    end
    private
    def lookup_student
        @student = Student.find(params[:id])
    end
    def student_params
        params.require(:student)
    end
end