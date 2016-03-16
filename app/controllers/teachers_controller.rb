class TeachersController < ApplicationController
  def index
    @teachers= Teacher.all
  end

  def show
    @teacher = Teacher.find(params[:id])
  end

  def new
    @teacher = Teacher.new
  end

  def create
    Teacher.create(teachers_params)
    redirect_to teachers_path
  end

  private

  def teachers_params
    params.require(:teacher).permit(:name, :universita, :tutorie, :add_info, :foto)
  end
end