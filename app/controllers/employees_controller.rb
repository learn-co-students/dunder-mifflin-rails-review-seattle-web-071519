class EmployeesController < ApplicationController
    before_action :set_employee, only: [:show, :edit, :update]
    def index
        @employees = Employee.all
    end

    # def show
    # end

    def new
        @employee = Employee.new
        @dogs = Dog.all
    end

    def create
        @dogs = Dog.all
        @employee = Employee.new(set_params)
        if @employee.save
            redirect_to @employee
        else
            @employee.errors.add(:title, "What is the deal")
            render :new
        end
    end

    private

        def set_employee
            @employee = Employee.find(params[:id])
        end

        def set_params
            params.require(:employee).permit(:first_name, :last_name, :title, :alias, :office, :img_url, :dog_id)
        end

end
