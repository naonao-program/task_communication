class TasksController < ApplicationController
  def index
    @lesson = Lesson.find(params[:lesson_id])
    @tasks = @lesson.tasks.all
  end

  def show
    @task = Task.find(params[:id])
  end
end
