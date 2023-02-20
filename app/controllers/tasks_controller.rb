class TasksController < ApplicationController
  # before_action :set_task, only: [:show, :edit, :update, :destroy]
  # I can list tasks
  def index
    @tasks = Task.all
  end

  # I can view the details of a task
  def show
    @task = Task.find(params[:id])
  end

  # I can add a new task (new and create)
  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to task_path(@task)
  end

  # I can edit a task (edit and update)
  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  # I can remove a task
  def destroy
    @task = Task.find(params[:id])
    @task.destroy
  end

  private

  # def set_task
  #   @task = Task.find(params[:id])
  # end

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
