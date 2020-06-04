class SchoolClassesController < ApplicationController
    def new
        @school_class = SchoolClass.new
    end
    def show
        @school_class = set_school_class
    end
    def create
        @school_class = SchoolClass.create(school_class_params(:room_number, :title))
        redirect_to school_class_path(@school_class)
    end
    def update
        # @school_class = set_school_class
        @school_class.create(school_class_params(:room_number))
        redirect_to school_class_path(@school_class)
    end
    def edit
        @school_class = set_school_class
    end

    
    private
        def set_school_class
            SchoolClass.find(params[:id])
        end
        def school_class_params(*args)
            params.require(:school_class).permit(*args)
        end
end
