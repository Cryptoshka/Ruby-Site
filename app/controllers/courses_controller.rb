class CoursesController < ApplicationController

  def index
    if params[:teacher_id]
      @courses = Course.where(teacher_id: params[:teacher_id])
    else if params[:year]
           @courses = Course.where(year: params[:year])

    else
      @courses = Course.all
    end
      end
  end

  def show
    @course = Course.find(params[:id])
  end

  def new
    @course = Course.new
    @teachers = Teacher.all
  end

  def create
    @course = Course.new(courses_params)
    if @course.save
      flash[:notice] = 'Course successfully saved'
      redirect_to courses_path
    else
      @teachers = Teacher.all
      flash.now[:error] = 'Error saving course'
      render :new
    end
  end

  private

  def courses_params
    params.require(:course).permit(:title, :year, :program, :books, :tpcheckbox, :teacher_id)
  end
end