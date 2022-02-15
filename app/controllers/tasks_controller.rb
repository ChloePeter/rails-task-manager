class TasksController < ApplicationController
  before_action :find_t, only: %i[show edit update destroy]

  def index
    @tasks = Task.all
  end

  def show
  end

  def create
    @task = Task.new(tasks_params)
    @task.save

    redirect_to task_path(@task)
  end

  def new
    @task = Task.new
  end

  def edit
  end

  def update
    @task.update(tasks_params)

    redirect_to task_path(@task)
  end

  def find
    @task = Task.find(params[:id])
  end

  def destroy
    @task.destroy

    redirect_to tasks_path
  end

  private

  def find_t
    params.require(:task).permit(:title, :details, :completed)
  end
end
