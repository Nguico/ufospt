class SpotsController < ApplicationController
  before_action :set_spot, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [ :new, :edit, :destroy, :create]
  def last
  @spots = Spot.all
  end

  def new
    @spot = current_user.spots.build
  end
  def map
  @spots = Spot.all
  @hash = Gmaps4rails.build_markers(@spots) do |spot, marker|
  marker.lat spot.latitude
  marker.lng spot.longitude
  marker.infowindow spot.title
  end
  end
  def show
  @spot = Spot.find(params[:id])
  end
  def create
    @spot = current_user.spots.build(spot_params)
    if @spot.save
      redirect_to spot_path(@spot)
    else
      redirect_to new_spot_path
    end
  end
  def edit
    @spot = Spot.find(params[:id])
  end
  def update
    @spot = Spot.find(params[:id])
    @spot.update(spot_params)
    redirect_to(spot_path(@spot))
  end
  def destroy
  @spot = Spot.find(params[:id])
  @spot.destroy
  redirect_to spots_path
  end
  private
  def spot_params
  params.require(:spot).permit(:title, :date, :image, :adress, :latitude, :longitude)
  end
  def set_spot
    @spot = Spot.find(params[:id])
  end
end
