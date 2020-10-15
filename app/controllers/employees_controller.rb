class EmployeesController < ApplicationController

    def index
        @emps = Employee.all
    end

    def show
        @emp = Employee.find(params[:id])
    end

    def new
        @dogs = Dog.all
        @emp = Employee.new
    end

    def create
        @emp = Employee.new(emp_params)
        @dogs = Dog.all

        if @emp.valid?
            redirect_to employee_path(@emp)
        else
            render :new
        end

    end

    def edit
        @emp = Employee.find(params[:id])
        @dogs = Dog.all
    end

    def update
        @emp = Employee.find(params[:id])
        @dogs = Dog.all

        if @emp.update(emp_params)
            redirect_to employee_path(@emp)
        else
            render :edit
        end
    end

    def emp_params
        params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :img_url, :dog_id )
    end
end
