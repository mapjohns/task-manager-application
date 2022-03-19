class TasksController < ApplicationController

    def new
        @task = Task.new()
    end

    def create
        binding.pry
        @task = Task.create(task_params)
    end


    private

    def task_params
        params.require(:task).permit(:name, :description, :status)
    end
end