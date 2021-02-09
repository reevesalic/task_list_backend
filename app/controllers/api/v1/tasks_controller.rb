class Api::V1::TasksController < ApplicationController

     def index
          tasks = Task.all
          render json: TaskSerializer.new(tasks)
     end

     def show
          task = Task.find(params[:id])
          render json: task, status: 200
     end

     def create
         
          task = Task.new(task_params)
          
          if task.save
          render json: TaskSerializer.new(task), status: :accepted
          else
               render json: {errors: task.errors.full_messages}, status: :unprocessible_entity
     end
end

     def update
          @task = Task.find(params[:id])
          @task.update(task_params)
          render json: @task, status: 200
     end

     def destroy
          @task = Task.find(params[:id])
          @task.delete
          render json: {taskId: @task.id}
     end
     private
     def task_params
          params.require(:task).permit(:task, :description, :category_id)
     end
end

