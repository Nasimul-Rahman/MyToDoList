class TasksController < ApplicationController
  def index
    @tasks = Task.all
    # @new_task = Task.new(task_params)

    # if @new_task.save
    #   redirect_to root, notice: 'Restaurant was successfully created.'
    # else
    #   render :new
    # end
  end

  def create
    @task = Task.new(task_params)

    if @task.save
      redirect_to root_path
    else
      render :new
    end
  end

  def new
    @task = Task.new
  end

  def show
    @task = Task.find(params[:id])
  end

  def update
    if @task.update(task_params)
      redirect_to @restaurant
    else
      render :edit
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to root_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
