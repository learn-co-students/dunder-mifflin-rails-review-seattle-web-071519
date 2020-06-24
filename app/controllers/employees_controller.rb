class EmployeesController < ApplicationController
    before_action :find_employee, only: [:show, :edit, :update]
    
    def index
        @employees= Employee.all
    end
    
    def new
        @employee= Employee.new
        @dogs= Dog.all
    end
    
    def create
        @employee= Employee.new(employee_params)
        @employee.save
        redirect_to employee_path(@employee)
    end

    def update
        @employee = @employee.update(employee_params)
        redirect_to employee_path(@employee)
    end

    def edit #REMEMBER TO PASS DOGS THROUGH MULTIPLE METHODS
        @dogs= Dog.all
    end

    private
    def employee_params
        params.require(:employee).permit(:dog_id, :first_name,
        :last_name,
        :alias,
        :title,
        :office
        )  
    end

    def find_employee
        @employee= Employee.find(params[:id])
    end

    # def name_validation #if alias || title == a current employee 
    #     if employee_params
    # end

    
end
