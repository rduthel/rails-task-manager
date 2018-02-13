class TasksController < ApplicationController
  before_action :set_task, :completed, only: :show

  def index
    @tasks = Task.all
  end

  def show; end

  def new
    @task = Task.new
  end

  def create
    @task = Task.create(task_params)
    redirect_to tasks_path
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def completed
    @task_completed = @task.completed ? 'Completed' : 'Not completed'
  end

  def task_params
    params.require(:task).permit(:title, :details)
  end
end
