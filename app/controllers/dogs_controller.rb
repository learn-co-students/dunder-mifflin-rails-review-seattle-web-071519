class DogsController < ApplicationController
    before_action :set_dog, only: [:show, :edit, :update, :destroy]


    def index
        @dogs = Dog.all
        #@sorted_dogs = Dog.sort_by_num_employees
        # byebug
    end

    def sorted_index
        @dogs = Dog.sort_by_num_employees
        render :index
    end

    # def show
    # end



    private

    def set_dog
        @dog = Dog.find(params[:id])
    end
        

end
