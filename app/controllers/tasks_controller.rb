class TasksController < ApplicationController
  before_action :set_task, only: [:update, :destroy, :done]
  
  def index
    @tasks = Task.todo
  end
  
  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to tasks_path, notice: 'Task created.'
    else
      redirect_to tasks_path, notice: 'Error creating task.'
    end
  end
  
  def update
    @task.update_attributes(task_params)
    respond_to do |format|
      format.json { respond_with_bip(@task) }
      format.json { respond_with_bip(@task) }
    end
  end
  
  def destroy
    @task.destroy
    redirect_to tasks_url, notice: 'Task removed.'
  end
  
  def done
    @task.done = true
    if @task.save
      redirect_to tasks_path, notice: 'Task marked as done.'
    else
      redirect_to tasks_path, notice: 'Error updating task.'
    end
  end
  
    private
    def set_task
      @task = Task.find(params[:id])
    end

    def task_params
      params.require(:task).permit(:description, :start)
    end
  end
