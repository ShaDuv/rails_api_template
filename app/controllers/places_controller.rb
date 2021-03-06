class PlacesController < ApplicationController
  def index
    @places = Place.all
    json_response @places
  end

  def show
    @place = Place.find params[:id]
    json_response @place
  end

  def create
    @place = Place.create! place_params
    json_response @place, :created
  end

  def update
    @place = Place.find params[:id]
    if @place.update! place_params
      render status: :ok, json: {
        message: "Place updated successfully!"
      }
    end
  end

  def destroy
    @place = Place.find params[:id]
    if @place.destroy!
      render status: :ok, json: {
        message: "Place destroyed successfully!"
      }
    end
  end

  private

  def place_params
    params.permit :name, :city, :country
  end
end
