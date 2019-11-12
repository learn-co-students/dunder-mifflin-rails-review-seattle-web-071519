class DogsController < ApplicationController
    before_action :set_dog, only: [:show, :edit, :update]
    def index
        @dogs = Dog.all
    end

    def show
        @employees = @dog.employees
    end
    
    def sorted_index
        @dogs = Dog.sort_by_employees
        render :index
    end

    private

    def set_dog
        @dog = Dog.find(params[:id])
    end
end
