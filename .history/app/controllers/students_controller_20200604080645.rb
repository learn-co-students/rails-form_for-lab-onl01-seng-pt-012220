class StudentsController < ApplicationController
    def new
        @student = Student.new
    end
    def show
        @student = set_student
    end
    def edit

    end
    def create
    end
    def update
    end
    
    private
        def set_student
            Student.find(params[:id])
        end
        def student_params(*args)
            params.require(:student).permit(*args)
        end
end
