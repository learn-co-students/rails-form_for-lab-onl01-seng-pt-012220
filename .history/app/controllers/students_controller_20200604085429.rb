class StudentsController < ApplicationController
    def new
    end
    def show
        @student = set_student
    end
    def create
        @student = Student.create(student_params(:first_name, :last_name))
        redirect_to student_path(@student)
    end
    def update
        @student = set_student
        @student.update(student_params(:first_name))
        redirect_to student_path(@student)
    end
    def edit
        @student = set_student
    end

    
    private
        def set_student
            Student.find(params[:id])
        end
        def student_params(*args)
            params.require(:student).permit(*args)
        end
end
