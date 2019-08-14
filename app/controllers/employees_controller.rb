class EmployeesController < ApplicationController
    before_action :set_employee, only: [:show, :edit, :update, :destroy]
    #before_validation 

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
        @employee = Employee.new(employee_params)
        if @employee.save
            redirect_to @employee
        else
            render :new
        end
    end

    def edit
        @dogs = Dog.all
    end

    def update
        @dogs = Dog.all
        @employee.update(employee_params)
        redirect_to employee_path(@employee)
    end



    private

    def set_employee
        @employee = Employee.find(params[:id])
    end

    def employee_params
        params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :dog_id)
    end

    # def is_alias_taken
    #     @employees = Employee.all
    #     if @employees.any? { |employee| employee.alias == params[:employee][:alias] }
    #         errors.add(:alias, "That alias is already taken!")
    #     end
    # end

    # def is_title_taken
    #     @employees = Employee.all
    #     if @employees.any? { |employee| employee.title == params[:employee][:title] }
    #         errors.add(:title, "That title is already taken!")
    #     end
    # end

end
