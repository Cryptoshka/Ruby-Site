class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end

  def show
    @room = Room.find(params[:id])
  end

  def new
    @room = Room.new
  end

  def create
    Room.create(rooms_params)
    redirect_to rooms_path
  end

  private

  def rooms_params
    params.require(:room).permit(:description, :fotoroom, :number)
  end
end