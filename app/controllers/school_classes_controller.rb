class SchoolClassesController < ApplicationController
    before_action :load_class, except: [:index, :new, :create]

    def index
        @classes = SchoolClass.all
        render 'index'
    end
    def new
        @class = SchoolClass.new
        render 'new'
    end

    def show
        render 'show'
    end
    def create
        @class = SchoolClass.create(params.require[:school_class])
        redirect_to school_class_path(@class)
    end

    private
    def load_class
        @class = SchoolClass.find(params[:id])
    end
end