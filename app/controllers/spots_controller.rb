class SpotsController < ApplicationController
  def index
    @spots = Spot.all
  end
  def new
    @spot = Spot.new
  end
  def show
  @spot = Spot.find(params[:id])
  end
  def create
    @spot = Spot.create(spot_params)
    redirect_to spots_path
  end
  private
  def spot_params
  params.require(:spot).permit(:title, :date, :image)
  end
end
