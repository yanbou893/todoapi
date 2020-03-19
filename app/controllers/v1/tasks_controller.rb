class V1::TasksController < ApplicationController
    def show
        tasks = Task.find_by(user_id: params[:id]).order(created_at: :desc)
        render json: tasks
    end

    def create
      task = Task.new(task_params)
      if task.save
        render json: task, status: :created
      else
        render json: task.errors, status: :unprocessable_entity
      end
    end

    def destroy
        task = Task.find(params[:id])
        if task.destroy
            render json: task
        end
    end

    private
      def task_params
        params.require(:task).permit(:title, :user_id)
      end
end
